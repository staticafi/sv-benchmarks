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

/*
  Bresenham's line drawing algorithm 
  from Srivastava et al.'s paper From Program Verification to Program Synthesis in POPL '10 
*/
/*
extern void __VERIFIER_error() __attribute__((__noreturn__));
extern int __VERIFIER_nondet_int(void);
void __VERIFIER_assert(int cond) {
    if (!(cond)) {
    ERROR:
        __VERIFIER_error();
    }
    return;
}
*/
extern int __VERIFIER_nondet_int(void);
int main() {
    int X, Y;
    int v, x, y;
    X = __VERIFIER_nondet_int();
    Y = __VERIFIER_nondet_int();
    v = 2 * Y - X;
    y = 0;
    x = 0;
    int c, k;
    c = 0;
    k = __VERIFIER_nondet_int();

    while (2*Y*x - 2*X*y - X + 2*Y - v + c <= k) {
      //__VERIFIER_assert(2*Y*x - 2*X*y - X + 2*Y - v == 0);
      //if (!(x <= X))            break;
        // out[x] = y

        if (v < 0) {
            v = v + 2 * Y;
        } else {
            v = v + 2 * (Y - X);
            y++;
        }
        x++;
        c++;
    }
    //__VERIFIER_assert(2*Y*x - 2*x*y - X + 2*Y - v + 2*y == 0);

    return 0;
}
