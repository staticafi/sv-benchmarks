#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <inttypes.h>

#define ARRAY_LENGTH(a) (sizeof (a) / sizeof (a)[0])

#define container_of(ptr, type, member) ({				\
	const __typeof__( ((type *)0)->member ) *__mptr = (ptr);	\
	(type *)( (char *)__mptr - offsetof(type,member) );})

#define wl_container_of(ptr, sample, member)				\
	(__typeof__(sample))((char *)(ptr) -				\
			     offsetof(__typeof__(*sample), member))

#define wl_list_for_each(pos, head, member)				\
	for (pos = wl_container_of((head)->next, pos, member);	\
	     &pos->member != (head);					\
	     pos = wl_container_of(pos->member.next, pos, member))

#define wl_list_for_each_safe(pos, tmp, head, member)			\
	for (pos = wl_container_of((head)->next, pos, member),		\
	     tmp = wl_container_of((pos)->member.next, tmp, member);	\
	     &pos->member != (head);					\
	     pos = tmp,							\
	     tmp = wl_container_of(pos->member.next, tmp, member))

#define wl_list_for_each_reverse(pos, head, member)			\
	for (pos = wl_container_of((head)->prev, pos, member);	\
	     &pos->member != (head);					\
	     pos = wl_container_of(pos->member.prev, pos, member))

#define wl_list_for_each_reverse_safe(pos, tmp, head, member)		\
	for (pos = wl_container_of((head)->prev, pos, member),	\
	     tmp = wl_container_of((pos)->member.prev, tmp, member);	\
	     &pos->member != (head);					\
	     pos = tmp,							\
	     tmp = wl_container_of(pos->member.prev, tmp, member))

int __VERIFIER_nondet_int(void);
void __VERIFIER_assert(int);

struct wl_event_loop;
struct wl_event_source;

struct wl_list {
	struct wl_list *prev;
	struct wl_list *next;
};

struct wl_array {
	size_t size;
	size_t alloc;
	void *data;
};

struct wl_listener;
typedef void (*wl_notify_func_t)(struct wl_listener *listener, void *data);
struct wl_listener {
	struct wl_list link;
	wl_notify_func_t notify;
};

struct wl_signal {
	struct wl_list listener_list;
};

void
wl_list_init(struct wl_list *list)
{
	list->prev = list;
	list->next = list;
}

void
wl_list_insert(struct wl_list *list, struct wl_list *elm)
{
	elm->prev = list;
	elm->next = list->next;
	list->next = elm;
	elm->next->prev = elm;
}

void
wl_list_remove(struct wl_list *elm)
{
	elm->prev->next = elm->next;
	elm->next->prev = elm->prev;
	elm->next = NULL;
	elm->prev = NULL;
}

int
wl_list_length(const struct wl_list *list)
{
	struct wl_list *e;
	int count;

	count = 0;
	e = list->next;
	while (e != list) {
		e = e->next;
		count++;
	}

	return count;
}

int
wl_list_empty(const struct wl_list *list)
{
	return list->next == list;
}

void
wl_list_insert_list(struct wl_list *list, struct wl_list *other)
{
	if (wl_list_empty(other))
		return;

	other->next->prev = list;
	other->prev->next = list->next;
	list->next->prev = other->prev;
	list->next = other->next;
}

void
wl_array_init(struct wl_array *array)
{
	memset(array, 0, sizeof *array);
}

void
wl_array_release(struct wl_array *array)
{
	free(array->data);
}

void *
wl_array_add(struct wl_array *array, size_t size)
{
	size_t alloc;
	void *data, *p;

	if (array->alloc > 0)
		alloc = array->alloc;
	else
		alloc = 16;

	while (alloc < array->size + size)
		alloc *= 2;

	if (array->alloc < alloc) {
		if (array->alloc > 0)
			data = realloc(array->data, alloc);
		else
			data = malloc(alloc);

		if (data == NULL)
			return NULL;
		array->data = data;
		array->alloc = alloc;
	}

	p = array->data + array->size;
	array->size += size;

	return p;
}

int
wl_array_copy(struct wl_array *array, struct wl_array *source)
{
	if (array->size < source->size) {
		if (!wl_array_add(array, source->size - array->size))
			return -1;
	} else {
		array->size = source->size;
	}

	memcpy(array->data, source->data, source->size);
	return 0;
}
static inline void
wl_signal_init(struct wl_signal *signal)
{
	wl_list_init(&signal->listener_list);
}

static inline void
wl_signal_add(struct wl_signal *signal, struct wl_listener *listener)
{
	wl_list_insert(signal->listener_list.prev, &listener->link);
}

static inline void
wl_signal_emit(struct wl_signal *signal, void *data)
{
	struct wl_listener *l, *next;

	wl_list_for_each_safe(l, next, &signal->listener_list, link)
		l->notify(l, data);
}

static inline struct wl_listener *
wl_signal_get(struct wl_signal *signal, wl_notify_func_t notify)
{
	struct wl_listener *l;

	wl_list_for_each(l, &signal->listener_list, link)
		if (l->notify == notify)
			return l;

	return NULL;
}

struct wl_event_loop {
	int epoll_fd;
	struct wl_list check_list;
	struct wl_list idle_list;
	struct wl_list destroy_list;

	struct wl_signal destroy_signal;
};

struct wl_event_source_interface {
	int (*dispatch)(struct wl_event_source *source,
			void *ep);
};

struct wl_event_source {
	struct wl_event_source_interface *interface;
	struct wl_event_loop *loop;
	struct wl_list link;
	void *data;
	int fd;
};

typedef int (*wl_event_loop_fd_func_t)(int fd, uint32_t mask, void *data);

struct wl_event_source_fd {
	struct wl_event_source base;
	wl_event_loop_fd_func_t func;
	int fd;
};

struct wl_event_loop *
wl_event_loop_create(void)
{
	struct wl_event_loop *loop;

	loop = malloc(sizeof *loop);
	if (loop == NULL)
		return NULL;

	loop->epoll_fd = __VERIFIER_nondet_int();
	if (loop->epoll_fd < 0) {
		free(loop);
		return NULL;
	}
	wl_list_init(&loop->check_list);
	wl_list_init(&loop->idle_list);
	wl_list_init(&loop->destroy_list);

	wl_signal_init(&loop->destroy_signal);

	return loop;
}

void
wl_event_source_check(struct wl_event_source *source)
{
	wl_list_insert(source->loop->check_list.prev, &source->link);
}

int
wl_event_source_remove(struct wl_event_source *source)
{
	struct wl_event_loop *loop = source->loop;

	/* We need to explicitly remove the fd, since closing the fd
	 * isn't enough in case we've dup'ed the fd. */
	if (source->fd >= 0) {
/*		epoll_ctl(loop->epoll_fd, EPOLL_CTL_DEL, source->fd, NULL);
		close(source->fd);*/
		source->fd = -1;
	}

	wl_list_remove(&source->link);
	wl_list_insert(&loop->destroy_list, &source->link);

	return 0;
}

static void
wl_event_loop_process_destroy_list(struct wl_event_loop *loop)
{
	struct wl_event_source *source, *next;

	wl_list_for_each_safe(source, next, &loop->destroy_list, link)
		free(source);

	wl_list_init(&loop->destroy_list);
}

void
wl_event_loop_destroy(struct wl_event_loop *loop)
{
	wl_signal_emit(&loop->destroy_signal, loop);

	wl_event_loop_process_destroy_list(loop);
/*	close(loop->epoll_fd);*/
	free(loop);
}

void
wl_event_loop_add_destroy_listener(struct wl_event_loop *loop,
				   struct wl_listener *listener)
{
	wl_signal_add(&loop->destroy_signal, listener);
}

struct wl_listener *
wl_event_loop_get_destroy_listener(struct wl_event_loop *loop,
				   wl_notify_func_t notify)
{
	return wl_signal_get(&loop->destroy_signal, notify);
}


struct wl_display {
	struct wl_event_loop *loop;
	int run;

	uint32_t id;
	uint32_t serial;

	struct wl_list registry_resource_list;
	struct wl_list global_list;
	struct wl_list socket_list;
	struct wl_list client_list;

	struct wl_signal destroy_signal;

	struct wl_array additional_shm_formats;
};

struct wl_display *
wl_display_create(void)
{
	struct wl_display *display;

	display = malloc(sizeof *display);
	if (display == NULL)
		return NULL;

	display->loop = wl_event_loop_create();
	if (display->loop == NULL) {
		free(display);
		return NULL;
	}

	wl_list_init(&display->global_list);
	wl_list_init(&display->socket_list);
	wl_list_init(&display->client_list);
	wl_list_init(&display->registry_resource_list);

	wl_signal_init(&display->destroy_signal);

	display->id = 1;
	display->serial = 0;

	wl_array_init(&display->additional_shm_formats);

	return display;
}

void
wl_display_destroy(struct wl_display *display)
{
	wl_signal_emit(&display->destroy_signal, display);
	wl_event_loop_destroy(display->loop);

	free(display);
}

struct wl_event_loop *
wl_display_get_event_loop(struct wl_display *display)
{
	return display->loop;
}

struct event_loop_destroy_listener {
	struct wl_listener listener;
	int done;
};

static void
event_loop_destroy_notify(struct wl_listener *l, void *data)
{
	struct event_loop_destroy_listener *listener =
		container_of(l, struct event_loop_destroy_listener, listener);

	listener->done = 1;
}

int main(void)
{
	struct wl_event_loop *loop;
	struct wl_display * display;
	struct event_loop_destroy_listener a, b;

	loop = wl_event_loop_create();
	if (!loop)
		return 0;

	a.listener.notify = &event_loop_destroy_notify;
	a.done = 0;
	wl_event_loop_add_destroy_listener(loop, &a.listener);

	__VERIFIER_assert(wl_event_loop_get_destroy_listener(loop,
	       event_loop_destroy_notify) == &a.listener);

	b.listener.notify = &event_loop_destroy_notify;
	b.done = 0;
	wl_event_loop_add_destroy_listener(loop, &b.listener);

	wl_list_remove(&a.listener.link);
	wl_event_loop_destroy(loop);

	__VERIFIER_assert(!a.done);
	__VERIFIER_assert(b.done);

	/* Test to make sure it gets fired on display destruction */
	display = wl_display_create();
	if (!display)
		return 0;

	loop = wl_display_get_event_loop(display);
	__VERIFIER_assert(loop != NULL);

	a.done = 0;
	wl_event_loop_add_destroy_listener(loop, &a.listener);

	wl_display_destroy(display);

	__VERIFIER_assert(a.done);
}
