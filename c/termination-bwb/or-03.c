// SPDX-FileCopyrightText: 2021 Y. Cyrus Liu <yliu195@stevens.edu>
//
// SPDX-License-Identifier: Apache-2.0

/*
 * Date: 2021-06-21
 * Author: yliu195@stevens.edu
 */


//unsigned int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int() __attribute__ ((__noreturn__));

int main (){
    int y;
    int x;
    x = __VERIFIER_nondet_int();
    y = __VERIFIER_nondet_int();
    while (x >= y && y>0){
        y = x|(x+1);
        x = x-y;
    }
    return 0;
}
