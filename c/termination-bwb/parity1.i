// SPDX-FileCopyrightText: 2021 Y. Cyrus Liu <yliu195@stevens.edu>
//
// SPDX-License-Identifier: Apache-2.0

extern int __VERIFIER_nondet_int(void);
int v, y, parity;
int main(){
  void* z;
  z = (void*)0;
  parity = 0;
  y= __VERIFIER_nondet_int();
  v= __VERIFIER_nondet_int();
  if (v<0) v= (-1)*v;
  while (v>0)
    {
      parity++;
      v = v & (v - 1);
   }
   return 0;
}
