#include <stdint.h>
#include <stdarg.h>

#ifndef NULL
#define NULL ((void *) 0)
#endif

int __VERIFIER_nondet_int(void);

struct wl_resource {
	struct wl_client *client;
};

struct wl_client {
	struct wl_resource *display_resource;
	int error;
};

void
wl_resource_post_event(struct wl_resource *resource, uint32_t opcode, ...)
{
	__VERIFIER_assert(resource != NULL);
}

enum {
	WL_DISPLAY_ERROR_NO_MEMORY,
	WL_DISPLAY_ERROR,
};

void
wl_resource_post_error(struct wl_resource *resource,
		       uint32_t code, const char *msg, ...)
{
	__VERIFIER_assert(resource != NULL);
	struct wl_client *client = resource->client;
	char buffer[128];
	va_list ap;

	va_start(ap, msg);
	vsnprintf(buffer, sizeof buffer, msg, ap);
	va_end(ap);

	client->error = 1;

	/*
	 * When a client aborts, its resources are destroyed in id order,
	 * which means the display resource is destroyed first. If destruction
	 * of any later resources results in a protocol error, we end up here
	 * with a NULL display_resource. Do not try to send errors to an
	 * already dead client.
	 */
	if (!client->display_resource)
		return;

	wl_resource_post_event(client->display_resource,
			       WL_DISPLAY_ERROR, resource, code, buffer);
}

void
wl_client_post_no_memory(struct wl_client *client)
{
	wl_resource_post_error(client->display_resource,
			       WL_DISPLAY_ERROR_NO_MEMORY, "no memory");
}

struct wl_resource *
wl_resource_create(struct wl_client *client)
{
	__VERIFIER_assert(client != NULL);
	if (__VERIFIER_nondet_int())
		return NULL;
	else {
		struct wl_resource *r = malloc(sizeof *r);
		__VERIFIER_assume(r != NULL);
		r->client = client;
		return r;
	}
}

static int
bind_display(struct wl_client *client, struct wl_display *display)
{
	client->display_resource =
		wl_resource_create(client);
	if (client->display_resource == NULL) {
		wl_client_post_no_memory(client);
		return -1;
	}

	return 0;
}

int main(void)
{
	struct wl_client *cl = calloc(sizeof *cl, 1);
	__VERIFIER_assume(cl != NULL);

	int event = __VERIFIER_nondet_int();
	switch (event) {
		case 1:
			bind_display(cl, NULL);
	}

	return 0;
}
