// SPDX-FileCopyrightText: 2021 Y. Cyrus Liu <yliu195@stevens.edu>
//
// SPDX-License-Identifier: Apache-2.0

extern int __VERIFIER_nondet_int(void);
int v;
unsigned int c;
int z, y;
int main(){
  y = __VERIFIER_nondet_int();
  v= __VERIFIER_nondet_int();
  if (v>=0){
    for (c = 0; v; c++) {
      v = v&(v - 1);
    }
    y = 1;
  } else {
    y = -1;
  }
  return z;
}
