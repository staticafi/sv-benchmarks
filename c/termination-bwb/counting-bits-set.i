// SPDX-FileCopyrightText: 2021 Y. Cyrus Liu <yliu195@stevens.edu>
//
// SPDX-License-Identifier: Apache-2.0

extern int __VERIFIER_nondet_int(void);
int v;
unsigned int c, z;
int y;
int main(){
  y = __VERIFIER_nondet_int();
  v = __VERIFIER_nondet_int();
  if (v>=0){
  for (c = 0; v; v >>= 1)
    {
      z = v & 1;
      c = c+z;
    }
  y = z+1;
  } else {
    y=1;
  }
  return 0;
}
