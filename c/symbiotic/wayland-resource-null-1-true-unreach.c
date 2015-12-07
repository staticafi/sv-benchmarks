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
wl_client_post_no_memory(struct wl_client *client)
{
	if (!client->display_resource)
		return;

	__VERIFIER_assert(client->display_resource != NULL);
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
