// Source: Shaz Qadeer, Dinghao Wu: "KISS: Keep It Simple and Sequential",
// PLDI 2004
// Simplified to remove heap accesses

#include <pthread.h>
#include "assert.h"

volatile int stoppingFlag;
volatile int pendingIo;
volatile int stoppingEvent;
volatile int stopped;

int BCSP_IoIncrement() {
    __VERIFIER_atomic_begin();
    int lsf = stoppingFlag;
    __VERIFIER_atomic_end();
    if (lsf) {
	return -1;
    } else {
    __VERIFIER_atomic_begin();
    int lp = pendingIo;
    __VERIFIER_atomic_end();
    __VERIFIER_atomic_begin();
    pendingIo = lp + 1;
    __VERIFIER_atomic_end();
    }
    return 0;
}

int dec() {
    __VERIFIER_atomic_begin();
    pendingIo--;
    int tmp = pendingIo;
    __VERIFIER_atomic_end();
    return tmp;
}

void BCSP_IoDecrement() {
    int pending;
    pending = dec();
    if (pending == 0) {
    __VERIFIER_atomic_begin();
	stoppingEvent = 1;
    __VERIFIER_atomic_end();
    }
}

void* BCSP_PnpAdd(void* arg) {
    int status;
    status = BCSP_IoIncrement();
    if (status == 0) {
    __VERIFIER_atomic_begin(); int local_assertion = !stopped; __VERIFIER_atomic_end();
	__VERIFIER_assert(local_assertion);
    }
    BCSP_IoDecrement();
    return 0;
}

void* BCSP_PnpStop(void* arg) {
    __VERIFIER_atomic_begin();
    stoppingFlag = 1;
    __VERIFIER_atomic_end();
    BCSP_IoDecrement();
    __VERIFIER_atomic_begin();
    int lse = stoppingEvent;
    __VERIFIER_atomic_end();
    assume_abort_if_not(lse);
    __VERIFIER_atomic_begin(); stopped = 1; __VERIFIER_atomic_end();
    return 0;
}

int main() {
    pthread_t t;
    pendingIo = 1;
    stoppingFlag = 0;
    stoppingEvent = 0;
    stopped = 0;
    pthread_create(&t, 0, BCSP_PnpStop, 0);
    BCSP_PnpAdd(0);
    return 0;
}
