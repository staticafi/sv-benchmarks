// This file is part of the SV-Benchmarks collection of verification tasks:
// https://gitlab.com/sosy-lab/benchmarking/sv-benchmarks
//
// SPDX-FileCopyrightText: 2021 DynamiTe team <https://github.com/letonchanh/dynamite>
//
// SPDX-License-Identifier: Apache-2.0

/*
  A nonlinear termination benchmark program from the OOPSLA'20 paper 
  "DynamiTe: Dynamic termination and non-termination proofs"
  by Ton Chanh Le, Timos Antonopoulos, Parisa Fathololumi, Eric Koskinen, ThanhVu Nguyen.
  Adapted from the original nonlinear benchmark nla-digbench. 
*/

/* Algorithm for finding the closest integer to square root,
 * more details, see : http://www.pedrofreire.com/sqrt/sqrt1.en.html 

Note: for some reason using cpa was able to disprove these
cpa.sh -kInduction -setprop solver.solver=z3 freire1.c
*/

//extern int __VERIFIER_nondet_int(void);
// #include <assert.h>
// #include <stdlib.h>
/*
void reach_error() { assert(0); }
void __VERIFIER_assert(int cond) {
    if (!(cond)) {
        ERROR: {reach_error();abort();}
    }
    return;
}
*/

extern int __VERIFIER_nondet_int(void);

int main() {
    int r;
    //double a, x;
    int x;
    int a = __VERIFIER_nondet_int();
    x = a / 2;
    r = 0;
    int c = 0; int k = __VERIFIER_nondet_int(); // Added
    
    while ( r*r - a - r + 2*x + c <= k ) {
      //__VERIFIER_assert((int)(r*r - a - r + 2*x) == 0);

      //if (!(x > r))             break;
        x = x - r;
        r = r + 1;
    }

    //__VERIFIER_assert((int)(r*r - a - r + 2*x) == 0);
    return 0;
}
