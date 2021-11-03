// This file is part of the SV-Benchmarks collection of verification tasks:
// https://gitlab.com/sosy-lab/benchmarking/sv-benchmarks
//
// SPDX-FileCopyrightText: 2013 Carnegie Mellon University
// SPDX-FileCopyrightText: 2014-2021 The SV-Benchmarks Community
// SPDX-FileCopyrightText: 2018 Marie-Christine Jakobs, LMU Munich
//
// SPDX-License-Identifier: LicenseRef-BSD-3-Clause-Attribution-CMU-LMU

int __return_main;
void abort(void);
extern void __assert_fail(const char *, const char *, unsigned int, const char *) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
void reach_error() { __assert_fail("0", "pals_opt-floodmax.4.1.ufo.BOUNDED-8.pals.c.v+cfa-reducer.c", 4, "reach_error"); }
char __VERIFIER_nondet_char();
_Bool __VERIFIER_nondet_bool();
void assert(_Bool arg);
void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
typedef char msg_t;
typedef int port_t;
void read(port_t p, msg_t m);
void write(port_t p, msg_t m);
msg_t nomsg = (msg_t )-1;
port_t p12 = 0;
char p12_old = '\x0';
char p12_new = '\x0';
_Bool ep12 = 0;
port_t p13 = 0;
char p13_old = '\x0';
char p13_new = '\x0';
_Bool ep13 = 0;
port_t p14 = 0;
char p14_old = '\x0';
char p14_new = '\x0';
_Bool ep14 = 0;
port_t p21 = 0;
char p21_old = '\x0';
char p21_new = '\x0';
_Bool ep21 = 0;
port_t p23 = 0;
char p23_old = '\x0';
char p23_new = '\x0';
_Bool ep23 = 0;
port_t p24 = 0;
char p24_old = '\x0';
char p24_new = '\x0';
_Bool ep24 = 0;
port_t p31 = 0;
char p31_old = '\x0';
char p31_new = '\x0';
_Bool ep31 = 0;
port_t p32 = 0;
char p32_old = '\x0';
char p32_new = '\x0';
_Bool ep32 = 0;
port_t p34 = 0;
char p34_old = '\x0';
char p34_new = '\x0';
_Bool ep34 = 0;
port_t p41 = 0;
char p41_old = '\x0';
char p41_new = '\x0';
_Bool ep41 = 0;
port_t p42 = 0;
char p42_old = '\x0';
char p42_new = '\x0';
_Bool ep42 = 0;
port_t p43 = 0;
char p43_old = '\x0';
char p43_new = '\x0';
_Bool ep43 = 0;
char id1 = '\x0';
char r1 = '\x0';
char st1 = '\x0';
char nl1 = '\x0';
char m1 = '\x0';
char max1 = '\x0';
_Bool mode1 = 0;
_Bool newmax1 = 0;
char id2 = '\x0';
char r2 = '\x0';
char st2 = '\x0';
char nl2 = '\x0';
char m2 = '\x0';
char max2 = '\x0';
_Bool mode2 = 0;
_Bool newmax2 = 0;
char id3 = '\x0';
char r3 = '\x0';
char st3 = '\x0';
char nl3 = '\x0';
char m3 = '\x0';
char max3 = '\x0';
_Bool mode3 = 0;
_Bool newmax3 = 0;
char id4 = '\x0';
char r4 = '\x0';
char st4 = '\x0';
char nl4 = '\x0';
char m4 = '\x0';
char max4 = '\x0';
_Bool mode4 = 0;
_Bool newmax4 = 0;
void node1();
void node2();
void node3();
void node4();
void (*nodes[4])() = { &node1, &node2, &node3, &node4 };
int init();
int check();
int main();
int __return_4969;
int __return_5215;
int __return_5380;
 int main()
 {
 int main__c1;
 int main__i2;
 main__c1 = 0;
 ep12 = __VERIFIER_nondet_bool();
 ep13 = __VERIFIER_nondet_bool();
 ep14 = __VERIFIER_nondet_bool();
 ep21 = __VERIFIER_nondet_bool();
 ep23 = __VERIFIER_nondet_bool();
 ep24 = __VERIFIER_nondet_bool();
 ep31 = __VERIFIER_nondet_bool();
 ep32 = __VERIFIER_nondet_bool();
 ep34 = __VERIFIER_nondet_bool();
 ep41 = __VERIFIER_nondet_bool();
 ep42 = __VERIFIER_nondet_bool();
 ep43 = __VERIFIER_nondet_bool();
 id1 = __VERIFIER_nondet_char();
 r1 = __VERIFIER_nondet_char();
 st1 = __VERIFIER_nondet_char();
 nl1 = __VERIFIER_nondet_char();
 m1 = __VERIFIER_nondet_char();
 max1 = __VERIFIER_nondet_char();
 mode1 = __VERIFIER_nondet_bool();
 newmax1 = __VERIFIER_nondet_bool();
 id2 = __VERIFIER_nondet_char();
 r2 = __VERIFIER_nondet_char();
 st2 = __VERIFIER_nondet_char();
 nl2 = __VERIFIER_nondet_char();
 m2 = __VERIFIER_nondet_char();
 max2 = __VERIFIER_nondet_char();
 mode2 = __VERIFIER_nondet_bool();
 newmax2 = __VERIFIER_nondet_bool();
 id3 = __VERIFIER_nondet_char();
 r3 = __VERIFIER_nondet_char();
 st3 = __VERIFIER_nondet_char();
 nl3 = __VERIFIER_nondet_char();
 m3 = __VERIFIER_nondet_char();
 max3 = __VERIFIER_nondet_char();
 mode3 = __VERIFIER_nondet_bool();
 newmax3 = __VERIFIER_nondet_bool();
 id4 = __VERIFIER_nondet_char();
 r4 = __VERIFIER_nondet_char();
 st4 = __VERIFIER_nondet_char();
 nl4 = __VERIFIER_nondet_char();
 m4 = __VERIFIER_nondet_char();
 max4 = __VERIFIER_nondet_char();
 mode4 = __VERIFIER_nondet_bool();
 newmax4 = __VERIFIER_nondet_bool();
 {
 _Bool init__r121;
 _Bool init__r131;
 _Bool init__r141;
 _Bool init__r211;
 _Bool init__r231;
 _Bool init__r241;
 _Bool init__r311;
 _Bool init__r321;
 _Bool init__r341;
 _Bool init__r411;
 _Bool init__r421;
 _Bool init__r431;
 _Bool init__r122;
 int init__tmp;
 _Bool init__r132;
 int init__tmp___0;
 _Bool init__r142;
 int init__tmp___1;
 _Bool init__r212;
 int init__tmp___2;
 _Bool init__r232;
 int init__tmp___3;
 _Bool init__r242;
 int init__tmp___4;
 _Bool init__r312;
 int init__tmp___5;
 _Bool init__r322;
 int init__tmp___6;
 _Bool init__r342;
 int init__tmp___7;
 _Bool init__r412;
 int init__tmp___8;
 _Bool init__r422;
 int init__tmp___9;
 _Bool init__r432;
 int init__tmp___10;
 _Bool init__r123;
 int init__tmp___11;
 _Bool init__r133;
 int init__tmp___12;
 _Bool init__r143;
 int init__tmp___13;
 _Bool init__r213;
 int init__tmp___14;
 _Bool init__r233;
 int init__tmp___15;
 _Bool init__r243;
 int init__tmp___16;
 _Bool init__r313;
 int init__tmp___17;
 _Bool init__r323;
 int init__tmp___18;
 _Bool init__r343;
 int init__tmp___19;
 _Bool init__r413;
 int init__tmp___20;
 _Bool init__r423;
 int init__tmp___21;
 _Bool init__r433;
 int init__tmp___22;
 int init__tmp___23;
 init__r121 = ep12;
 init__r131 = ep13;
 init__r141 = ep14;
 init__r211 = ep21;
 init__r231 = ep23;
 init__r241 = ep24;
 init__r311 = ep31;
 init__r321 = ep32;
 init__r341 = ep34;
 init__r411 = ep41;
 init__r421 = ep42;
 init__r431 = ep43;
 if (!(init__r121 == 0))
 {
 init__tmp = 1;
 label_4428:; 
 init__r122 = (_Bool)init__tmp;
 if (!(init__r131 == 0))
 {
 init__tmp___0 = 1;
 label_4447:; 
 init__r132 = (_Bool)init__tmp___0;
 if (!(init__r141 == 0))
 {
 init__tmp___1 = 1;
 label_4467:; 
 init__r142 = (_Bool)init__tmp___1;
 if (!(init__r211 == 0))
 {
 init__tmp___2 = 1;
 label_4487:; 
 init__r212 = (_Bool)init__tmp___2;
 if (!(init__r231 == 0))
 {
 init__tmp___3 = 1;
 label_4507:; 
 init__r232 = (_Bool)init__tmp___3;
 if (!(init__r241 == 0))
 {
 init__tmp___4 = 1;
 label_4527:; 
 init__r242 = (_Bool)init__tmp___4;
 if (!(init__r311 == 0))
 {
 init__tmp___5 = 1;
 label_4547:; 
 init__r312 = (_Bool)init__tmp___5;
 if (!(init__r321 == 0))
 {
 init__tmp___6 = 1;
 label_4567:; 
 init__r322 = (_Bool)init__tmp___6;
 if (!(init__r341 == 0))
 {
 init__tmp___7 = 1;
 label_4587:; 
 init__r342 = (_Bool)init__tmp___7;
 if (!(init__r411 == 0))
 {
 init__tmp___8 = 1;
 label_4607:; 
 init__r412 = (_Bool)init__tmp___8;
 if (!(init__r421 == 0))
 {
 init__tmp___9 = 1;
 label_4627:; 
 init__r422 = (_Bool)init__tmp___9;
 if (!(init__r431 == 0))
 {
 init__tmp___10 = 1;
 label_4647:; 
 init__r432 = (_Bool)init__tmp___10;
 if (!(init__r122 == 0))
 {
 init__tmp___11 = 1;
 label_4667:; 
 init__r123 = (_Bool)init__tmp___11;
 if (!(init__r132 == 0))
 {
 init__tmp___12 = 1;
 label_4687:; 
 init__r133 = (_Bool)init__tmp___12;
 if (!(init__r142 == 0))
 {
 init__tmp___13 = 1;
 label_4707:; 
 init__r143 = (_Bool)init__tmp___13;
 if (!(init__r212 == 0))
 {
 init__tmp___14 = 1;
 label_4727:; 
 init__r213 = (_Bool)init__tmp___14;
 if (!(init__r232 == 0))
 {
 init__tmp___15 = 1;
 label_4747:; 
 init__r233 = (_Bool)init__tmp___15;
 if (!(init__r242 == 0))
 {
 init__tmp___16 = 1;
 label_4767:; 
 init__r243 = (_Bool)init__tmp___16;
 if (!(init__r312 == 0))
 {
 init__tmp___17 = 1;
 label_4787:; 
 init__r313 = (_Bool)init__tmp___17;
 if (!(init__r322 == 0))
 {
 init__tmp___18 = 1;
 label_4807:; 
 init__r323 = (_Bool)init__tmp___18;
 if (!(init__r342 == 0))
 {
 init__tmp___19 = 1;
 label_4827:; 
 init__r343 = (_Bool)init__tmp___19;
 if (!(init__r412 == 0))
 {
 init__tmp___20 = 1;
 label_4847:; 
 init__r413 = (_Bool)init__tmp___20;
 if (!(init__r422 == 0))
 {
 init__tmp___21 = 1;
 label_4867:; 
 init__r423 = (_Bool)init__tmp___21;
 if (!(init__r432 == 0))
 {
 init__tmp___22 = 1;
 label_4887:; 
 init__r433 = (_Bool)init__tmp___22;
 if (((int)id1) != ((int)id2))
 {
 if (((int)id1) != ((int)id3))
 {
 if (((int)id1) != ((int)id4))
 {
 if (((int)id2) != ((int)id3))
 {
 if (((int)id2) != ((int)id4))
 {
 if (((int)id3) != ((int)id4))
 {
 if (((int)id1) >= 0)
 {
 if (((int)id2) >= 0)
 {
 if (((int)id3) >= 0)
 {
 if (((int)id4) >= 0)
 {
 if (((int)r1) == 0)
 {
 if (((int)r2) == 0)
 {
 if (((int)r3) == 0)
 {
 if (((int)r4) == 0)
 {
 if (((int)max1) == ((int)id1))
 {
 if (((int)max2) == ((int)id2))
 {
 if (((int)max3) == ((int)id3))
 {
 if (((int)max4) == ((int)id4))
 {
 if (((int)st1) == 0)
 {
 if (((int)st2) == 0)
 {
 if (((int)st3) == 0)
 {
 if (((int)st4) == 0)
 {
 if (((int)nl1) == 0)
 {
 if (((int)nl2) == 0)
 {
 if (((int)nl3) == 0)
 {
 if (((int)nl4) == 0)
 {
 if (((int)mode1) == 0)
 {
 if (((int)mode2) == 0)
 {
 if (((int)mode3) == 0)
 {
 if (((int)mode4) == 0)
 {
 if (!(newmax1 == 0))
 {
 if (!(newmax2 == 0))
 {
 if (!(newmax3 == 0))
 {
 if (!(newmax4 == 0))
 {
 init__tmp___23 = 1;
  __return_4969 = init__tmp___23;
 main__i2 = __return_4969;
 if (main__i2 != 0)
 {
 p12_old = nomsg;
 p12_new = nomsg;
 p13_old = nomsg;
 p13_new = nomsg;
 p14_old = nomsg;
 p14_new = nomsg;
 p21_old = nomsg;
 p21_new = nomsg;
 p23_old = nomsg;
 p23_new = nomsg;
 p24_old = nomsg;
 p24_new = nomsg;
 p31_old = nomsg;
 p31_new = nomsg;
 p32_old = nomsg;
 p32_new = nomsg;
 p34_old = nomsg;
 p34_new = nomsg;
 p41_old = nomsg;
 p41_new = nomsg;
 p42_old = nomsg;
 p42_new = nomsg;
 p43_old = nomsg;
 p43_new = nomsg;
 main__i2 = 0;
 label_4998:; 
 if (main__i2 < 8)
 {
 {
 _Bool node1__newmax;
 node1__newmax = 0;
 if (!(mode1 == 0))
 {
 r1 = (char)(((int)r1) + 1);
 if (!(ep21 == 0))
 {
 m1 = p21_old;
 p21_old = nomsg;
 if (((int)m1) > ((int)max1))
 {
 max1 = m1;
 node1__newmax = 1;
 label_5227:; 
 if (!(ep31 == 0))
 {
 m1 = p31_old;
 p31_old = nomsg;
 if (((int)m1) > ((int)max1))
 {
 max1 = m1;
 node1__newmax = 1;
 label_5229:; 
 if (!(ep41 == 0))
 {
 m1 = p41_old;
 p41_old = nomsg;
 if (((int)m1) > ((int)max1))
 {
 max1 = m1;
 node1__newmax = 1;
 label_5232:; 
 newmax1 = node1__newmax;
 if (((int)r1) == 3)
 {
 if (((int)max1) == ((int)id1))
 {
 st1 = 1;
 label_5241:; 
 mode1 = 0;
 label_5038:; 
 {
 _Bool node2__newmax;
 node2__newmax = 0;
 if (!(mode2 == 0))
 {
 r2 = (char)(((int)r2) + 1);
 if (!(ep12 == 0))
 {
 m2 = p12_old;
 p12_old = nomsg;
 if (((int)m2) > ((int)max2))
 {
 max2 = m2;
 node2__newmax = 1;
 label_5256:; 
 if (!(ep32 == 0))
 {
 m2 = p32_old;
 p32_old = nomsg;
 if (((int)m2) > ((int)max2))
 {
 max2 = m2;
 node2__newmax = 1;
 label_5258:; 
 if (!(ep42 == 0))
 {
 m2 = p42_old;
 p42_old = nomsg;
 if (((int)m2) > ((int)max2))
 {
 max2 = m2;
 node2__newmax = 1;
 label_5261:; 
 newmax2 = node2__newmax;
 if (((int)r2) == 3)
 {
 if (((int)max2) == ((int)id2))
 {
 st2 = 1;
 label_5270:; 
 mode2 = 0;
 label_5079:; 
 {
 _Bool node3__newmax;
 node3__newmax = 0;
 if (!(mode3 == 0))
 {
 r3 = (char)(((int)r3) + 1);
 if (!(ep13 == 0))
 {
 m3 = p13_old;
 p13_old = nomsg;
 if (((int)m3) > ((int)max3))
 {
 max3 = m3;
 node3__newmax = 1;
 label_5285:; 
 if (!(ep23 == 0))
 {
 m3 = p23_old;
 p23_old = nomsg;
 if (((int)m3) > ((int)max3))
 {
 max3 = m3;
 node3__newmax = 1;
 label_5287:; 
 if (!(ep43 == 0))
 {
 m3 = p43_old;
 p43_old = nomsg;
 if (((int)m3) > ((int)max3))
 {
 max3 = m3;
 node3__newmax = 1;
 label_5290:; 
 newmax3 = node3__newmax;
 if (((int)r3) == 3)
 {
 if (((int)max3) == ((int)id3))
 {
 st3 = 1;
 label_5299:; 
 mode3 = 0;
 label_5120:; 
 {
 _Bool node4__newmax;
 node4__newmax = 0;
 if (!(mode4 == 0))
 {
 r4 = (char)(((int)r4) + 1);
 if (!(ep14 == 0))
 {
 m4 = p14_old;
 p14_old = nomsg;
 if (((int)m4) > ((int)max4))
 {
 max4 = m4;
 node4__newmax = 1;
 label_5314:; 
 if (!(ep24 == 0))
 {
 m4 = p24_old;
 p24_old = nomsg;
 if (((int)m4) > ((int)max4))
 {
 max4 = m4;
 node4__newmax = 1;
 label_5316:; 
 if (!(ep34 == 0))
 {
 m4 = p34_old;
 p34_old = nomsg;
 if (((int)m4) > ((int)max4))
 {
 max4 = m4;
 node4__newmax = 1;
 label_5319:; 
 newmax4 = node4__newmax;
 if (((int)r4) == 3)
 {
 if (((int)max4) == ((int)id4))
 {
 st4 = 1;
 label_5328:; 
 mode4 = 0;
 label_5161:; 
 p12_old = p12_new;
 p12_new = nomsg;
 p13_old = p13_new;
 p13_new = nomsg;
 p14_old = p14_new;
 p14_new = nomsg;
 p21_old = p21_new;
 p21_new = nomsg;
 p23_old = p23_new;
 p23_new = nomsg;
 p24_old = p24_new;
 p24_new = nomsg;
 p31_old = p31_new;
 p31_new = nomsg;
 p32_old = p32_new;
 p32_new = nomsg;
 p34_old = p34_new;
 p34_new = nomsg;
 p41_old = p41_new;
 p41_new = nomsg;
 p42_old = p42_new;
 p42_new = nomsg;
 p43_old = p43_new;
 p43_new = nomsg;
 {
 int check__tmp;
 if ((((((int)st1) + ((int)st2)) + ((int)st3)) + ((int)st4)) <= 1)
 {
 if ((((int)st1) + ((int)nl1)) <= 1)
 {
 if ((((int)st2) + ((int)nl2)) <= 1)
 {
 if ((((int)st3) + ((int)nl3)) <= 1)
 {
 if ((((int)st4) + ((int)nl4)) <= 1)
 {
 if (((int)r1) >= 3)
 {
 label_5198:; 
 if (((int)r1) < 3)
 {
 label_5200:; 
 if (((int)r1) >= 3)
 {
 label_5203:; 
 if (((int)r1) < 3)
 {
 check__tmp = 1;
 label_5206:; 
 label_5207:; 
 label_5208:; 
 label_5209:; 
 label_5210:; 
 label_5211:; 
 label_5212:; 
 label_5213:; 
 label_5214:; 
  __return_5215 = check__tmp;
 main__c1 = __return_5215;
 {
 _Bool __tmp_1;
 __tmp_1 = main__c1;
 _Bool assert__arg;
 assert__arg = __tmp_1;
 if (assert__arg == 0)
 {
 {reach_error();}
 return __return_main;
 }
 else 
 {
 int main____CPAchecker_TMP_0 = main__i2;
 main__i2 = main__i2 + 1;
 goto label_4998;
 }
 }
 }
 else 
 {
 if ((((((int)nl1) + ((int)nl2)) + ((int)nl3)) + ((int)nl4)) == 3)
 {
 check__tmp = 1;
 goto label_5206;
 }
 else 
 {
 check__tmp = 0;
 goto label_5206;
 }
 }
 }
 else 
 {
 if ((((((int)nl1) + ((int)nl2)) + ((int)nl3)) + ((int)nl4)) == 0)
 {
 goto label_5203;
 }
 else 
 {
 check__tmp = 0;
 goto label_5207;
 }
 }
 }
 else 
 {
 if ((((((int)st1) + ((int)st2)) + ((int)st3)) + ((int)st4)) == 1)
 {
 goto label_5200;
 }
 else 
 {
 check__tmp = 0;
 goto label_5208;
 }
 }
 }
 else 
 {
 if ((((((int)st1) + ((int)st2)) + ((int)st3)) + ((int)st4)) == 0)
 {
 goto label_5198;
 }
 else 
 {
 check__tmp = 0;
 goto label_5209;
 }
 }
 }
 else 
 {
 check__tmp = 0;
 goto label_5210;
 }
 }
 else 
 {
 check__tmp = 0;
 goto label_5211;
 }
 }
 else 
 {
 check__tmp = 0;
 goto label_5212;
 }
 }
 else 
 {
 check__tmp = 0;
 goto label_5213;
 }
 }
 else 
 {
 check__tmp = 0;
 goto label_5214;
 }
 }
 }
 else 
 {
 nl4 = 1;
 goto label_5328;
 }
 }
 else 
 {
 goto label_5328;
 }
 }
 else 
 {
 goto label_5319;
 }
 }
 else 
 {
 goto label_5319;
 }
 }
 else 
 {
 goto label_5316;
 }
 }
 else 
 {
 goto label_5316;
 }
 }
 else 
 {
 goto label_5314;
 }
 }
 else 
 {
 goto label_5314;
 }
 }
 else 
 {
 if (((int)r4) < 3)
 {
 if (!(ep41 == 0))
 {
 if (!(newmax4 == 0))
 {
 int node4____CPAchecker_TMP_0;
 if (max4 != nomsg)
 {
 if (p41_new == nomsg)
 {
 node4____CPAchecker_TMP_0 = max4;
 label_5150:; 
 p41_new = node4____CPAchecker_TMP_0;
 label_5129:; 
 if (!(ep42 == 0))
 {
 if (!(newmax4 == 0))
 {
 int node4____CPAchecker_TMP_1;
 if (max4 != nomsg)
 {
 if (p42_new == nomsg)
 {
 node4____CPAchecker_TMP_1 = max4;
 label_5154:; 
 p42_new = node4____CPAchecker_TMP_1;
 label_5131:; 
 if (!(ep43 == 0))
 {
 if (!(newmax4 == 0))
 {
 int node4____CPAchecker_TMP_2;
 if (max4 != nomsg)
 {
 if (p43_new == nomsg)
 {
 node4____CPAchecker_TMP_2 = max4;
 label_5157:; 
 p43_new = node4____CPAchecker_TMP_2;
 label_5140:; 
 mode4 = 1;
 goto label_5161;
 }
 else 
 {
 label_5152:; 
 node4____CPAchecker_TMP_2 = p43_new;
 goto label_5157;
 }
 }
 else 
 {
 goto label_5152;
 }
 }
 else 
 {
 goto label_5140;
 }
 }
 else 
 {
 goto label_5140;
 }
 }
 else 
 {
 label_5148:; 
 node4____CPAchecker_TMP_1 = p42_new;
 goto label_5154;
 }
 }
 else 
 {
 goto label_5148;
 }
 }
 else 
 {
 goto label_5131;
 }
 }
 else 
 {
 goto label_5131;
 }
 }
 else 
 {
 label_5145:; 
 node4____CPAchecker_TMP_0 = p41_new;
 goto label_5150;
 }
 }
 else 
 {
 goto label_5145;
 }
 }
 else 
 {
 goto label_5129;
 }
 }
 else 
 {
 goto label_5129;
 }
 }
 else 
 {
 goto label_5140;
 }
 }
 }
 }
 else 
 {
 nl3 = 1;
 goto label_5299;
 }
 }
 else 
 {
 goto label_5299;
 }
 }
 else 
 {
 goto label_5290;
 }
 }
 else 
 {
 goto label_5290;
 }
 }
 else 
 {
 goto label_5287;
 }
 }
 else 
 {
 goto label_5287;
 }
 }
 else 
 {
 goto label_5285;
 }
 }
 else 
 {
 goto label_5285;
 }
 }
 else 
 {
 if (((int)r3) < 3)
 {
 if (!(ep31 == 0))
 {
 if (!(newmax3 == 0))
 {
 int node3____CPAchecker_TMP_0;
 if (max3 != nomsg)
 {
 if (p31_new == nomsg)
 {
 node3____CPAchecker_TMP_0 = max3;
 label_5109:; 
 p31_new = node3____CPAchecker_TMP_0;
 label_5088:; 
 if (!(ep32 == 0))
 {
 if (!(newmax3 == 0))
 {
 int node3____CPAchecker_TMP_1;
 if (max3 != nomsg)
 {
 if (p32_new == nomsg)
 {
 node3____CPAchecker_TMP_1 = max3;
 label_5113:; 
 p32_new = node3____CPAchecker_TMP_1;
 label_5090:; 
 if (!(ep34 == 0))
 {
 if (!(newmax3 == 0))
 {
 int node3____CPAchecker_TMP_2;
 if (max3 != nomsg)
 {
 if (p34_new == nomsg)
 {
 node3____CPAchecker_TMP_2 = max3;
 label_5116:; 
 p34_new = node3____CPAchecker_TMP_2;
 label_5099:; 
 mode3 = 1;
 goto label_5120;
 }
 else 
 {
 label_5111:; 
 node3____CPAchecker_TMP_2 = p34_new;
 goto label_5116;
 }
 }
 else 
 {
 goto label_5111;
 }
 }
 else 
 {
 goto label_5099;
 }
 }
 else 
 {
 goto label_5099;
 }
 }
 else 
 {
 label_5107:; 
 node3____CPAchecker_TMP_1 = p32_new;
 goto label_5113;
 }
 }
 else 
 {
 goto label_5107;
 }
 }
 else 
 {
 goto label_5090;
 }
 }
 else 
 {
 goto label_5090;
 }
 }
 else 
 {
 label_5104:; 
 node3____CPAchecker_TMP_0 = p31_new;
 goto label_5109;
 }
 }
 else 
 {
 goto label_5104;
 }
 }
 else 
 {
 goto label_5088;
 }
 }
 else 
 {
 goto label_5088;
 }
 }
 else 
 {
 goto label_5099;
 }
 }
 }
 }
 else 
 {
 nl2 = 1;
 goto label_5270;
 }
 }
 else 
 {
 goto label_5270;
 }
 }
 else 
 {
 goto label_5261;
 }
 }
 else 
 {
 goto label_5261;
 }
 }
 else 
 {
 goto label_5258;
 }
 }
 else 
 {
 goto label_5258;
 }
 }
 else 
 {
 goto label_5256;
 }
 }
 else 
 {
 goto label_5256;
 }
 }
 else 
 {
 if (((int)r2) < 3)
 {
 if (!(ep21 == 0))
 {
 if (!(newmax2 == 0))
 {
 int node2____CPAchecker_TMP_0;
 if (max2 != nomsg)
 {
 if (p21_new == nomsg)
 {
 node2____CPAchecker_TMP_0 = max2;
 label_5068:; 
 p21_new = node2____CPAchecker_TMP_0;
 label_5047:; 
 if (!(ep23 == 0))
 {
 if (!(newmax2 == 0))
 {
 int node2____CPAchecker_TMP_1;
 if (max2 != nomsg)
 {
 if (p23_new == nomsg)
 {
 node2____CPAchecker_TMP_1 = max2;
 label_5072:; 
 p23_new = node2____CPAchecker_TMP_1;
 label_5049:; 
 if (!(ep24 == 0))
 {
 if (!(newmax2 == 0))
 {
 int node2____CPAchecker_TMP_2;
 if (max2 != nomsg)
 {
 if (p24_new == nomsg)
 {
 node2____CPAchecker_TMP_2 = max2;
 label_5075:; 
 p24_new = node2____CPAchecker_TMP_2;
 label_5058:; 
 mode2 = 1;
 goto label_5079;
 }
 else 
 {
 label_5070:; 
 node2____CPAchecker_TMP_2 = p24_new;
 goto label_5075;
 }
 }
 else 
 {
 goto label_5070;
 }
 }
 else 
 {
 goto label_5058;
 }
 }
 else 
 {
 goto label_5058;
 }
 }
 else 
 {
 label_5066:; 
 node2____CPAchecker_TMP_1 = p23_new;
 goto label_5072;
 }
 }
 else 
 {
 goto label_5066;
 }
 }
 else 
 {
 goto label_5049;
 }
 }
 else 
 {
 goto label_5049;
 }
 }
 else 
 {
 label_5063:; 
 node2____CPAchecker_TMP_0 = p21_new;
 goto label_5068;
 }
 }
 else 
 {
 goto label_5063;
 }
 }
 else 
 {
 goto label_5047;
 }
 }
 else 
 {
 goto label_5047;
 }
 }
 else 
 {
 goto label_5058;
 }
 }
 }
 }
 else 
 {
 nl1 = 1;
 goto label_5241;
 }
 }
 else 
 {
 goto label_5241;
 }
 }
 else 
 {
 goto label_5232;
 }
 }
 else 
 {
 goto label_5232;
 }
 }
 else 
 {
 goto label_5229;
 }
 }
 else 
 {
 goto label_5229;
 }
 }
 else 
 {
 goto label_5227;
 }
 }
 else 
 {
 goto label_5227;
 }
 }
 else 
 {
 if (((int)r1) < 3)
 {
 if (!(ep12 == 0))
 {
 if (!(newmax1 == 0))
 {
 int node1____CPAchecker_TMP_0;
 if (max1 != nomsg)
 {
 if (p12_new == nomsg)
 {
 node1____CPAchecker_TMP_0 = max1;
 label_5027:; 
 p12_new = node1____CPAchecker_TMP_0;
 label_5006:; 
 if (!(ep13 == 0))
 {
 if (!(newmax1 == 0))
 {
 int node1____CPAchecker_TMP_1;
 if (max1 != nomsg)
 {
 if (p13_new == nomsg)
 {
 node1____CPAchecker_TMP_1 = max1;
 label_5031:; 
 p13_new = node1____CPAchecker_TMP_1;
 label_5008:; 
 if (!(ep14 == 0))
 {
 if (!(newmax1 == 0))
 {
 int node1____CPAchecker_TMP_2;
 if (max1 != nomsg)
 {
 if (p14_new == nomsg)
 {
 node1____CPAchecker_TMP_2 = max1;
 label_5034:; 
 p14_new = node1____CPAchecker_TMP_2;
 label_5017:; 
 mode1 = 1;
 goto label_5038;
 }
 else 
 {
 label_5029:; 
 node1____CPAchecker_TMP_2 = p14_new;
 goto label_5034;
 }
 }
 else 
 {
 goto label_5029;
 }
 }
 else 
 {
 goto label_5017;
 }
 }
 else 
 {
 goto label_5017;
 }
 }
 else 
 {
 label_5025:; 
 node1____CPAchecker_TMP_1 = p13_new;
 goto label_5031;
 }
 }
 else 
 {
 goto label_5025;
 }
 }
 else 
 {
 goto label_5008;
 }
 }
 else 
 {
 goto label_5008;
 }
 }
 else 
 {
 label_5022:; 
 node1____CPAchecker_TMP_0 = p12_new;
 goto label_5027;
 }
 }
 else 
 {
 goto label_5022;
 }
 }
 else 
 {
 goto label_5006;
 }
 }
 else 
 {
 goto label_5006;
 }
 }
 else 
 {
 goto label_5017;
 }
 }
 }
 }
 else 
 {
  __return_5380 = 0;
 return __return_5380;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 if (!(init__r412 == 0))
 {
 if (!(ep13 == 0))
 {
 init__tmp___22 = 1;
 goto label_4887;
 }
 else 
 {
 label_4884:; 
 if (!(init__r422 == 0))
 {
 if (!(ep23 == 0))
 {
 init__tmp___22 = 1;
 label_4902:; 
 goto label_4887;
 }
 else 
 {
 init__tmp___22 = 0;
 goto label_4902;
 }
 }
 else 
 {
 init__tmp___22 = 0;
 goto label_4887;
 }
 }
 }
 else 
 {
 goto label_4884;
 }
 }
 }
 else 
 {
 if (!(init__r412 == 0))
 {
 if (!(ep12 == 0))
 {
 init__tmp___21 = 1;
 goto label_4867;
 }
 else 
 {
 label_4864:; 
 if (!(init__r432 == 0))
 {
 if (!(ep32 == 0))
 {
 init__tmp___21 = 1;
 label_4888:; 
 goto label_4867;
 }
 else 
 {
 init__tmp___21 = 0;
 goto label_4888;
 }
 }
 else 
 {
 init__tmp___21 = 0;
 goto label_4867;
 }
 }
 }
 else 
 {
 goto label_4864;
 }
 }
 }
 else 
 {
 if (!(init__r422 == 0))
 {
 if (!(ep21 == 0))
 {
 init__tmp___20 = 1;
 goto label_4847;
 }
 else 
 {
 label_4844:; 
 if (!(init__r432 == 0))
 {
 if (!(ep31 == 0))
 {
 init__tmp___20 = 1;
 label_4868:; 
 goto label_4847;
 }
 else 
 {
 init__tmp___20 = 0;
 goto label_4868;
 }
 }
 else 
 {
 init__tmp___20 = 0;
 goto label_4847;
 }
 }
 }
 else 
 {
 goto label_4844;
 }
 }
 }
 else 
 {
 if (!(init__r312 == 0))
 {
 if (!(ep14 == 0))
 {
 init__tmp___19 = 1;
 goto label_4827;
 }
 else 
 {
 label_4824:; 
 if (!(init__r322 == 0))
 {
 if (!(ep24 == 0))
 {
 init__tmp___19 = 1;
 label_4848:; 
 goto label_4827;
 }
 else 
 {
 init__tmp___19 = 0;
 goto label_4848;
 }
 }
 else 
 {
 init__tmp___19 = 0;
 goto label_4827;
 }
 }
 }
 else 
 {
 goto label_4824;
 }
 }
 }
 else 
 {
 if (!(init__r312 == 0))
 {
 if (!(ep12 == 0))
 {
 init__tmp___18 = 1;
 goto label_4807;
 }
 else 
 {
 label_4804:; 
 if (!(init__r342 == 0))
 {
 if (!(ep42 == 0))
 {
 init__tmp___18 = 1;
 label_4828:; 
 goto label_4807;
 }
 else 
 {
 init__tmp___18 = 0;
 goto label_4828;
 }
 }
 else 
 {
 init__tmp___18 = 0;
 goto label_4807;
 }
 }
 }
 else 
 {
 goto label_4804;
 }
 }
 }
 else 
 {
 if (!(init__r322 == 0))
 {
 if (!(ep21 == 0))
 {
 init__tmp___17 = 1;
 goto label_4787;
 }
 else 
 {
 label_4784:; 
 if (!(init__r342 == 0))
 {
 if (!(ep41 == 0))
 {
 init__tmp___17 = 1;
 label_4808:; 
 goto label_4787;
 }
 else 
 {
 init__tmp___17 = 0;
 goto label_4808;
 }
 }
 else 
 {
 init__tmp___17 = 0;
 goto label_4787;
 }
 }
 }
 else 
 {
 goto label_4784;
 }
 }
 }
 else 
 {
 if (!(init__r212 == 0))
 {
 if (!(ep14 == 0))
 {
 init__tmp___16 = 1;
 goto label_4767;
 }
 else 
 {
 label_4764:; 
 if (!(init__r232 == 0))
 {
 if (!(ep34 == 0))
 {
 init__tmp___16 = 1;
 label_4788:; 
 goto label_4767;
 }
 else 
 {
 init__tmp___16 = 0;
 goto label_4788;
 }
 }
 else 
 {
 init__tmp___16 = 0;
 goto label_4767;
 }
 }
 }
 else 
 {
 goto label_4764;
 }
 }
 }
 else 
 {
 if (!(init__r212 == 0))
 {
 if (!(ep13 == 0))
 {
 init__tmp___15 = 1;
 goto label_4747;
 }
 else 
 {
 label_4744:; 
 if (!(init__r242 == 0))
 {
 if (!(ep43 == 0))
 {
 init__tmp___15 = 1;
 label_4768:; 
 goto label_4747;
 }
 else 
 {
 init__tmp___15 = 0;
 goto label_4768;
 }
 }
 else 
 {
 init__tmp___15 = 0;
 goto label_4747;
 }
 }
 }
 else 
 {
 goto label_4744;
 }
 }
 }
 else 
 {
 if (!(init__r232 == 0))
 {
 if (!(ep31 == 0))
 {
 init__tmp___14 = 1;
 goto label_4727;
 }
 else 
 {
 label_4724:; 
 if (!(init__r242 == 0))
 {
 if (!(ep41 == 0))
 {
 init__tmp___14 = 1;
 label_4748:; 
 goto label_4727;
 }
 else 
 {
 init__tmp___14 = 0;
 goto label_4748;
 }
 }
 else 
 {
 init__tmp___14 = 0;
 goto label_4727;
 }
 }
 }
 else 
 {
 goto label_4724;
 }
 }
 }
 else 
 {
 if (!(init__r122 == 0))
 {
 if (!(ep24 == 0))
 {
 init__tmp___13 = 1;
 goto label_4707;
 }
 else 
 {
 label_4704:; 
 if (!(init__r132 == 0))
 {
 if (!(ep34 == 0))
 {
 init__tmp___13 = 1;
 label_4728:; 
 goto label_4707;
 }
 else 
 {
 init__tmp___13 = 0;
 goto label_4728;
 }
 }
 else 
 {
 init__tmp___13 = 0;
 goto label_4707;
 }
 }
 }
 else 
 {
 goto label_4704;
 }
 }
 }
 else 
 {
 if (!(init__r122 == 0))
 {
 if (!(ep23 == 0))
 {
 init__tmp___12 = 1;
 goto label_4687;
 }
 else 
 {
 label_4684:; 
 if (!(init__r142 == 0))
 {
 if (!(ep43 == 0))
 {
 init__tmp___12 = 1;
 label_4708:; 
 goto label_4687;
 }
 else 
 {
 init__tmp___12 = 0;
 goto label_4708;
 }
 }
 else 
 {
 init__tmp___12 = 0;
 goto label_4687;
 }
 }
 }
 else 
 {
 goto label_4684;
 }
 }
 }
 else 
 {
 if (!(init__r132 == 0))
 {
 if (!(ep32 == 0))
 {
 init__tmp___11 = 1;
 goto label_4667;
 }
 else 
 {
 label_4664:; 
 if (!(init__r142 == 0))
 {
 if (!(ep42 == 0))
 {
 init__tmp___11 = 1;
 label_4688:; 
 goto label_4667;
 }
 else 
 {
 init__tmp___11 = 0;
 goto label_4688;
 }
 }
 else 
 {
 init__tmp___11 = 0;
 goto label_4667;
 }
 }
 }
 else 
 {
 goto label_4664;
 }
 }
 }
 else 
 {
 if (!(init__r411 == 0))
 {
 if (!(ep13 == 0))
 {
 init__tmp___10 = 1;
 goto label_4647;
 }
 else 
 {
 label_4644:; 
 if (!(init__r421 == 0))
 {
 if (!(ep23 == 0))
 {
 init__tmp___10 = 1;
 label_4668:; 
 goto label_4647;
 }
 else 
 {
 init__tmp___10 = 0;
 goto label_4668;
 }
 }
 else 
 {
 init__tmp___10 = 0;
 goto label_4647;
 }
 }
 }
 else 
 {
 goto label_4644;
 }
 }
 }
 else 
 {
 if (!(init__r411 == 0))
 {
 if (!(ep12 == 0))
 {
 init__tmp___9 = 1;
 goto label_4627;
 }
 else 
 {
 label_4624:; 
 if (!(init__r431 == 0))
 {
 if (!(ep32 == 0))
 {
 init__tmp___9 = 1;
 label_4648:; 
 goto label_4627;
 }
 else 
 {
 init__tmp___9 = 0;
 goto label_4648;
 }
 }
 else 
 {
 init__tmp___9 = 0;
 goto label_4627;
 }
 }
 }
 else 
 {
 goto label_4624;
 }
 }
 }
 else 
 {
 if (!(init__r421 == 0))
 {
 if (!(ep21 == 0))
 {
 init__tmp___8 = 1;
 goto label_4607;
 }
 else 
 {
 label_4604:; 
 if (!(init__r431 == 0))
 {
 if (!(ep31 == 0))
 {
 init__tmp___8 = 1;
 label_4628:; 
 goto label_4607;
 }
 else 
 {
 init__tmp___8 = 0;
 goto label_4628;
 }
 }
 else 
 {
 init__tmp___8 = 0;
 goto label_4607;
 }
 }
 }
 else 
 {
 goto label_4604;
 }
 }
 }
 else 
 {
 if (!(init__r311 == 0))
 {
 if (!(ep14 == 0))
 {
 init__tmp___7 = 1;
 goto label_4587;
 }
 else 
 {
 label_4584:; 
 if (!(init__r321 == 0))
 {
 if (!(ep24 == 0))
 {
 init__tmp___7 = 1;
 label_4608:; 
 goto label_4587;
 }
 else 
 {
 init__tmp___7 = 0;
 goto label_4608;
 }
 }
 else 
 {
 init__tmp___7 = 0;
 goto label_4587;
 }
 }
 }
 else 
 {
 goto label_4584;
 }
 }
 }
 else 
 {
 if (!(init__r311 == 0))
 {
 if (!(ep12 == 0))
 {
 init__tmp___6 = 1;
 goto label_4567;
 }
 else 
 {
 label_4564:; 
 if (!(init__r341 == 0))
 {
 if (!(ep42 == 0))
 {
 init__tmp___6 = 1;
 label_4588:; 
 goto label_4567;
 }
 else 
 {
 init__tmp___6 = 0;
 goto label_4588;
 }
 }
 else 
 {
 init__tmp___6 = 0;
 goto label_4567;
 }
 }
 }
 else 
 {
 goto label_4564;
 }
 }
 }
 else 
 {
 if (!(init__r321 == 0))
 {
 if (!(ep21 == 0))
 {
 init__tmp___5 = 1;
 goto label_4547;
 }
 else 
 {
 label_4544:; 
 if (!(init__r341 == 0))
 {
 if (!(ep41 == 0))
 {
 init__tmp___5 = 1;
 label_4568:; 
 goto label_4547;
 }
 else 
 {
 init__tmp___5 = 0;
 goto label_4568;
 }
 }
 else 
 {
 init__tmp___5 = 0;
 goto label_4547;
 }
 }
 }
 else 
 {
 goto label_4544;
 }
 }
 }
 else 
 {
 if (!(init__r211 == 0))
 {
 if (!(ep14 == 0))
 {
 init__tmp___4 = 1;
 goto label_4527;
 }
 else 
 {
 label_4524:; 
 if (!(init__r231 == 0))
 {
 if (!(ep34 == 0))
 {
 init__tmp___4 = 1;
 label_4548:; 
 goto label_4527;
 }
 else 
 {
 init__tmp___4 = 0;
 goto label_4548;
 }
 }
 else 
 {
 init__tmp___4 = 0;
 goto label_4527;
 }
 }
 }
 else 
 {
 goto label_4524;
 }
 }
 }
 else 
 {
 if (!(init__r211 == 0))
 {
 if (!(ep13 == 0))
 {
 init__tmp___3 = 1;
 goto label_4507;
 }
 else 
 {
 label_4504:; 
 if (!(init__r241 == 0))
 {
 if (!(ep43 == 0))
 {
 init__tmp___3 = 1;
 label_4528:; 
 goto label_4507;
 }
 else 
 {
 init__tmp___3 = 0;
 goto label_4528;
 }
 }
 else 
 {
 init__tmp___3 = 0;
 goto label_4507;
 }
 }
 }
 else 
 {
 goto label_4504;
 }
 }
 }
 else 
 {
 if (!(init__r231 == 0))
 {
 if (!(ep31 == 0))
 {
 init__tmp___2 = 1;
 goto label_4487;
 }
 else 
 {
 label_4484:; 
 if (!(init__r241 == 0))
 {
 if (!(ep41 == 0))
 {
 init__tmp___2 = 1;
 label_4508:; 
 goto label_4487;
 }
 else 
 {
 init__tmp___2 = 0;
 goto label_4508;
 }
 }
 else 
 {
 init__tmp___2 = 0;
 goto label_4487;
 }
 }
 }
 else 
 {
 goto label_4484;
 }
 }
 }
 else 
 {
 if (!(init__r121 == 0))
 {
 if (!(ep24 == 0))
 {
 init__tmp___1 = 1;
 goto label_4467;
 }
 else 
 {
 label_4464:; 
 if (!(init__r131 == 0))
 {
 if (!(ep34 == 0))
 {
 init__tmp___1 = 1;
 label_4488:; 
 goto label_4467;
 }
 else 
 {
 init__tmp___1 = 0;
 goto label_4488;
 }
 }
 else 
 {
 init__tmp___1 = 0;
 goto label_4467;
 }
 }
 }
 else 
 {
 goto label_4464;
 }
 }
 }
 else 
 {
 if (!(init__r121 == 0))
 {
 if (!(ep23 == 0))
 {
 init__tmp___0 = 1;
 goto label_4447;
 }
 else 
 {
 label_4444:; 
 if (!(init__r141 == 0))
 {
 if (!(ep43 == 0))
 {
 init__tmp___0 = 1;
 label_4468:; 
 goto label_4447;
 }
 else 
 {
 init__tmp___0 = 0;
 goto label_4468;
 }
 }
 else 
 {
 init__tmp___0 = 0;
 goto label_4447;
 }
 }
 }
 else 
 {
 goto label_4444;
 }
 }
 }
 else 
 {
 if (!(init__r131 == 0))
 {
 if (!(ep32 == 0))
 {
 init__tmp = 1;
 goto label_4428;
 }
 else 
 {
 label_4425:; 
 if (!(init__r141 == 0))
 {
 if (!(ep42 == 0))
 {
 init__tmp = 1;
 label_4448:; 
 goto label_4428;
 }
 else 
 {
 init__tmp = 0;
 goto label_4448;
 }
 }
 else 
 {
 init__tmp = 0;
 goto label_4428;
 }
 }
 }
 else 
 {
 goto label_4425;
 }
 }
 }
 }
