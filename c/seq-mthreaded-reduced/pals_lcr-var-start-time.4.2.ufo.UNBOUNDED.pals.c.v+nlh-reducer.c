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
void reach_error() { __assert_fail("0", "pals_lcr-var-start-time.4.2.ufo.UNBOUNDED.pals.c.v+nlh-reducer.c", 4, "reach_error"); }
_Bool __VERIFIER_nondet_bool();
char __VERIFIER_nondet_char();
unsigned char __VERIFIER_nondet_uchar();
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
unsigned char r1 = '\x0';
port_t p1 = 0;
char p1_old = '\x0';
char p1_new = '\x0';
char id1 = '\x0';
char st1 = '\x0';
msg_t send1 = '\x0';
_Bool mode1 = 0;
_Bool alive1 = 0;
port_t p2 = 0;
char p2_old = '\x0';
char p2_new = '\x0';
char id2 = '\x0';
char st2 = '\x0';
msg_t send2 = '\x0';
_Bool mode2 = 0;
_Bool alive2 = 0;
port_t p3 = 0;
char p3_old = '\x0';
char p3_new = '\x0';
char id3 = '\x0';
char st3 = '\x0';
msg_t send3 = '\x0';
_Bool mode3 = 0;
_Bool alive3 = 0;
port_t p4 = 0;
char p4_old = '\x0';
char p4_new = '\x0';
char id4 = '\x0';
char st4 = '\x0';
msg_t send4 = '\x0';
_Bool mode4 = 0;
_Bool alive4 = 0;
void node1();
void node2();
void node3();
void node4();
void (*nodes[4])() = { &node1, &node2, &node3, &node4 };
int init();
int check();
int main();
int __return_10566;
int __return_10664;
int __return_10824;
 int main()
 {
 int main__c1;
 int main__i2;
 main__c1 = 0;
 r1 = __VERIFIER_nondet_uchar();
 id1 = __VERIFIER_nondet_char();
 st1 = __VERIFIER_nondet_char();
 send1 = __VERIFIER_nondet_char();
 mode1 = __VERIFIER_nondet_bool();
 alive1 = __VERIFIER_nondet_bool();
 id2 = __VERIFIER_nondet_char();
 st2 = __VERIFIER_nondet_char();
 send2 = __VERIFIER_nondet_char();
 mode2 = __VERIFIER_nondet_bool();
 alive2 = __VERIFIER_nondet_bool();
 id3 = __VERIFIER_nondet_char();
 st3 = __VERIFIER_nondet_char();
 send3 = __VERIFIER_nondet_char();
 mode3 = __VERIFIER_nondet_bool();
 alive3 = __VERIFIER_nondet_bool();
 id4 = __VERIFIER_nondet_char();
 st4 = __VERIFIER_nondet_char();
 send4 = __VERIFIER_nondet_char();
 mode4 = __VERIFIER_nondet_bool();
 alive4 = __VERIFIER_nondet_bool();
 {
 int init__tmp;
 if (((int)r1) == 0)
 {
 if ((((((int)alive1) + ((int)alive2)) + ((int)alive3)) + ((int)alive4)) >= 1)
 {
 if (((int)id1) >= 0)
 {
 if (((int)st1) == 0)
 {
 if (((int)send1) == ((int)id1))
 {
 if (((int)mode1) == 0)
 {
 if (((int)id2) >= 0)
 {
 if (((int)st2) == 0)
 {
 if (((int)send2) == ((int)id2))
 {
 if (((int)mode2) == 0)
 {
 if (((int)id3) >= 0)
 {
 if (((int)st3) == 0)
 {
 if (((int)send3) == ((int)id3))
 {
 if (((int)mode3) == 0)
 {
 if (((int)id4) >= 0)
 {
 if (((int)st4) == 0)
 {
 if (((int)send4) == ((int)id4))
 {
 if (((int)mode4) == 0)
 {
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
 init__tmp = 1;
  __return_10566 = init__tmp;
 main__i2 = __return_10566;
 if (main__i2 != 0)
 {
 p1_old = nomsg;
 p1_new = nomsg;
 p2_old = nomsg;
 p2_new = nomsg;
 p3_old = nomsg;
 p3_new = nomsg;
 p4_old = nomsg;
 p4_new = nomsg;
 main__i2 = 0;
 {
 msg_t node1__m1;
 node1__m1 = nomsg;
 if (!(mode1 == 0))
 {
 return __return_main;
 }
 else 
 {
 if (!(alive1 == 0))
 {
 int node1____CPAchecker_TMP_0;
 if (send1 != nomsg)
 {
 if (p1_new == nomsg)
 {
 node1____CPAchecker_TMP_0 = send1;
 label_10591:; 
 p1_new = node1____CPAchecker_TMP_0;
 label_10586:; 
 mode1 = 1;
 {
 msg_t node2__m2;
 node2__m2 = nomsg;
 if (!(mode2 == 0))
 {
 return __return_main;
 }
 else 
 {
 if (!(alive2 == 0))
 {
 int node2____CPAchecker_TMP_0;
 if (send2 != nomsg)
 {
 if (p2_new == nomsg)
 {
 node2____CPAchecker_TMP_0 = send2;
 label_10607:; 
 p2_new = node2____CPAchecker_TMP_0;
 label_10609:; 
 mode2 = 1;
 {
 msg_t node3__m3;
 node3__m3 = nomsg;
 if (!(mode3 == 0))
 {
 return __return_main;
 }
 else 
 {
 if (!(alive3 == 0))
 {
 int node3____CPAchecker_TMP_0;
 if (send3 != nomsg)
 {
 if (p3_new == nomsg)
 {
 node3____CPAchecker_TMP_0 = send3;
 label_10624:; 
 p3_new = node3____CPAchecker_TMP_0;
 label_10626:; 
 mode3 = 1;
 {
 msg_t node4__m4;
 node4__m4 = nomsg;
 if (!(mode4 == 0))
 {
 return __return_main;
 }
 else 
 {
 if (!(alive4 == 0))
 {
 int node4____CPAchecker_TMP_0;
 if (send4 != nomsg)
 {
 if (p4_new == nomsg)
 {
 node4____CPAchecker_TMP_0 = send4;
 label_10641:; 
 p4_new = node4____CPAchecker_TMP_0;
 label_10643:; 
 mode4 = 1;
 p1_old = p1_new;
 p1_new = nomsg;
 p2_old = p2_new;
 p2_new = nomsg;
 p3_old = p3_new;
 p3_new = nomsg;
 p4_old = p4_new;
 p4_new = nomsg;
 {
 int check__tmp;
 if ((((((int)st1) + ((int)st2)) + ((int)st3)) + ((int)st4)) <= 1)
 {
 if (((int)r1) < 4)
 {
 check__tmp = 1;
  __return_10664 = check__tmp;
 main__c1 = __return_10664;
 {
 _Bool __tmp_1;
 __tmp_1 = main__c1;
 _Bool assert__arg;
 assert__arg = __tmp_1;
 if (assert__arg == 0)
 {
 return __return_main;
 }
 else 
 {
 {
 msg_t node1__m1;
 node1__m1 = nomsg;
 if (!(mode1 == 0))
 {
 if (r1 == 255)
 {
 return __return_main;
 }
 else 
 {
 r1 = r1 + 1;
 node1__m1 = p4_old;
 p4_old = nomsg;
 if (((int)node1__m1) != ((int)nomsg))
 {
 if (!(alive1 == 0))
 {
 if (((int)node1__m1) > ((int)id1))
 {
 send1 = node1__m1;
 label_10980:; 
 label_10683:; 
 mode1 = 0;
 {
 msg_t node2__m2;
 node2__m2 = nomsg;
 if (!(mode2 == 0))
 {
 node2__m2 = p1_old;
 p1_old = nomsg;
 if (((int)node2__m2) != ((int)nomsg))
 {
 if (!(alive2 == 0))
 {
 if (((int)node2__m2) > ((int)id2))
 {
 send2 = node2__m2;
 label_10970:; 
 label_10696:; 
 mode2 = 0;
 {
 msg_t node3__m3;
 node3__m3 = nomsg;
 if (!(mode3 == 0))
 {
 node3__m3 = p2_old;
 p2_old = nomsg;
 if (((int)node3__m3) != ((int)nomsg))
 {
 if (!(alive3 == 0))
 {
 if (((int)node3__m3) > ((int)id3))
 {
 send3 = node3__m3;
 label_11031:; 
 label_10708:; 
 mode3 = 0;
 {
 msg_t node4__m4;
 node4__m4 = nomsg;
 if (!(mode4 == 0))
 {
 node4__m4 = p3_old;
 p3_old = nomsg;
 if (((int)node4__m4) != ((int)nomsg))
 {
 if (!(alive4 == 0))
 {
 if (((int)node4__m4) > ((int)id4))
 {
 send4 = node4__m4;
 label_11006:; 
 label_10720:; 
 mode4 = 0;
 label_10808:; 
 p1_old = p1_new;
 p1_new = nomsg;
 p2_old = p2_new;
 p2_new = nomsg;
 p3_old = p3_new;
 p3_new = nomsg;
 p4_old = p4_new;
 p4_new = nomsg;
 {
 int check__tmp;
 if ((((((int)st1) + ((int)st2)) + ((int)st3)) + ((int)st4)) <= 1)
 {
 if (((int)r1) < 4)
 {
 check__tmp = 1;
 label_10877:; 
 label_10823:; 
  __return_10824 = check__tmp;
 main__c1 = __return_10824;
 {
 _Bool __tmp_2;
 __tmp_2 = main__c1;
 _Bool assert__arg;
 assert__arg = __tmp_2;
 if (assert__arg == 0)
 {
 {reach_error();}
 return __return_main;
 }
 else 
 {
 {
 msg_t node1__m1;
 node1__m1 = nomsg;
 if (!(mode1 == 0))
 {
 if (r1 == 255)
 {
 r1 = 3;
 label_10841:; 
 r1 = r1 + 1;
 node1__m1 = p4_old;
 p4_old = nomsg;
 if (((int)node1__m1) != ((int)nomsg))
 {
 if (!(alive1 == 0))
 {
 if (((int)node1__m1) > ((int)id1))
 {
 send1 = node1__m1;
 label_10856:; 
 label_10846:; 
 mode1 = 0;
 label_10848:; 
 {
 msg_t node2__m2;
 node2__m2 = nomsg;
 if (!(mode2 == 0))
 {
 node2__m2 = p1_old;
 p1_old = nomsg;
 if (((int)node2__m2) != ((int)nomsg))
 {
 if (!(alive2 == 0))
 {
 if (((int)node2__m2) > ((int)id2))
 {
 send2 = node2__m2;
 label_10942:; 
 label_10776:; 
 mode2 = 0;
 label_10778:; 
 {
 msg_t node3__m3;
 node3__m3 = nomsg;
 if (!(mode3 == 0))
 {
 node3__m3 = p2_old;
 p2_old = nomsg;
 if (((int)node3__m3) != ((int)nomsg))
 {
 if (!(alive3 == 0))
 {
 if (((int)node3__m3) > ((int)id3))
 {
 send3 = node3__m3;
 label_10914:; 
 label_10790:; 
 mode3 = 0;
 label_10792:; 
 {
 msg_t node4__m4;
 node4__m4 = nomsg;
 if (!(mode4 == 0))
 {
 node4__m4 = p3_old;
 p3_old = nomsg;
 if (((int)node4__m4) != ((int)nomsg))
 {
 if (!(alive4 == 0))
 {
 if (((int)node4__m4) > ((int)id4))
 {
 send4 = node4__m4;
 label_10886:; 
 label_10804:; 
 mode4 = 0;
 label_10806:; 
 goto label_10808;
 }
 else 
 {
 if (((int)node4__m4) == ((int)id4))
 {
 st4 = 1;
 goto label_10886;
 }
 else 
 {
 goto label_10886;
 }
 }
 }
 else 
 {
 send4 = node4__m4;
 goto label_10804;
 }
 }
 else 
 {
 goto label_10804;
 }
 }
 else 
 {
 if (!(alive4 == 0))
 {
 int node4____CPAchecker_TMP_0;
 if (send4 != nomsg)
 {
 if (p4_new == nomsg)
 {
 node4____CPAchecker_TMP_0 = send4;
 label_10895:; 
 p4_new = node4____CPAchecker_TMP_0;
 label_10897:; 
 mode4 = 1;
 goto label_10806;
 }
 else 
 {
 label_10894:; 
 node4____CPAchecker_TMP_0 = p4_new;
 goto label_10895;
 }
 }
 else 
 {
 goto label_10894;
 }
 }
 else 
 {
 if (((int)send4) != ((int)id4))
 {
 int node4____CPAchecker_TMP_1;
 if (send4 != nomsg)
 {
 if (p4_new == nomsg)
 {
 node4____CPAchecker_TMP_1 = send4;
 label_10905:; 
 p4_new = node4____CPAchecker_TMP_1;
 goto label_10897;
 }
 else 
 {
 label_10904:; 
 node4____CPAchecker_TMP_1 = p4_new;
 goto label_10905;
 }
 }
 else 
 {
 goto label_10904;
 }
 }
 else 
 {
 goto label_10897;
 }
 }
 }
 }
 }
 else 
 {
 if (((int)node3__m3) == ((int)id3))
 {
 st3 = 1;
 goto label_10914;
 }
 else 
 {
 goto label_10914;
 }
 }
 }
 else 
 {
 send3 = node3__m3;
 goto label_10790;
 }
 }
 else 
 {
 goto label_10790;
 }
 }
 else 
 {
 if (!(alive3 == 0))
 {
 int node3____CPAchecker_TMP_0;
 if (send3 != nomsg)
 {
 if (p3_new == nomsg)
 {
 node3____CPAchecker_TMP_0 = send3;
 label_10923:; 
 p3_new = node3____CPAchecker_TMP_0;
 label_10925:; 
 mode3 = 1;
 goto label_10792;
 }
 else 
 {
 label_10922:; 
 node3____CPAchecker_TMP_0 = p3_new;
 goto label_10923;
 }
 }
 else 
 {
 goto label_10922;
 }
 }
 else 
 {
 if (((int)send3) != ((int)id3))
 {
 int node3____CPAchecker_TMP_1;
 if (send3 != nomsg)
 {
 if (p3_new == nomsg)
 {
 node3____CPAchecker_TMP_1 = send3;
 label_10933:; 
 p3_new = node3____CPAchecker_TMP_1;
 goto label_10925;
 }
 else 
 {
 label_10932:; 
 node3____CPAchecker_TMP_1 = p3_new;
 goto label_10933;
 }
 }
 else 
 {
 goto label_10932;
 }
 }
 else 
 {
 goto label_10925;
 }
 }
 }
 }
 }
 else 
 {
 if (((int)node2__m2) == ((int)id2))
 {
 st2 = 1;
 goto label_10942;
 }
 else 
 {
 goto label_10942;
 }
 }
 }
 else 
 {
 send2 = node2__m2;
 goto label_10776;
 }
 }
 else 
 {
 goto label_10776;
 }
 }
 else 
 {
 if (!(alive2 == 0))
 {
 int node2____CPAchecker_TMP_0;
 if (send2 != nomsg)
 {
 if (p2_new == nomsg)
 {
 node2____CPAchecker_TMP_0 = send2;
 label_10951:; 
 p2_new = node2____CPAchecker_TMP_0;
 label_10953:; 
 mode2 = 1;
 goto label_10778;
 }
 else 
 {
 label_10950:; 
 node2____CPAchecker_TMP_0 = p2_new;
 goto label_10951;
 }
 }
 else 
 {
 goto label_10950;
 }
 }
 else 
 {
 if (((int)send2) != ((int)id2))
 {
 int node2____CPAchecker_TMP_1;
 if (send2 != nomsg)
 {
 if (p2_new == nomsg)
 {
 node2____CPAchecker_TMP_1 = send2;
 label_10961:; 
 p2_new = node2____CPAchecker_TMP_1;
 goto label_10953;
 }
 else 
 {
 label_10960:; 
 node2____CPAchecker_TMP_1 = p2_new;
 goto label_10961;
 }
 }
 else 
 {
 goto label_10960;
 }
 }
 else 
 {
 goto label_10953;
 }
 }
 }
 }
 }
 else 
 {
 if (((int)node1__m1) == ((int)id1))
 {
 st1 = 1;
 goto label_10856;
 }
 else 
 {
 goto label_10856;
 }
 }
 }
 else 
 {
 send1 = node1__m1;
 goto label_10846;
 }
 }
 else 
 {
 goto label_10846;
 }
 }
 else 
 {
 goto label_10841;
 }
 }
 else 
 {
 if (!(alive1 == 0))
 {
 int node1____CPAchecker_TMP_0;
 if (send1 != nomsg)
 {
 if (p1_new == nomsg)
 {
 node1____CPAchecker_TMP_0 = send1;
 label_10866:; 
 p1_new = node1____CPAchecker_TMP_0;
 label_10861:; 
 mode1 = 1;
 goto label_10848;
 }
 else 
 {
 label_10865:; 
 node1____CPAchecker_TMP_0 = p1_new;
 goto label_10866;
 }
 }
 else 
 {
 goto label_10865;
 }
 }
 else 
 {
 goto label_10861;
 }
 }
 }
 }
 }
 }
 else 
 {
 if ((((((int)st1) + ((int)st2)) + ((int)st3)) + ((int)st4)) == 1)
 {
 check__tmp = 1;
 goto label_10877;
 }
 else 
 {
 check__tmp = 0;
 goto label_10877;
 }
 }
 }
 else 
 {
 check__tmp = 0;
 goto label_10823;
 }
 }
 }
 else 
 {
 if (((int)node4__m4) == ((int)id4))
 {
 st4 = 1;
 goto label_11006;
 }
 else 
 {
 goto label_11006;
 }
 }
 }
 else 
 {
 send4 = node4__m4;
 goto label_10720;
 }
 }
 else 
 {
 goto label_10720;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 }
 else 
 {
 if (((int)node3__m3) == ((int)id3))
 {
 st3 = 1;
 goto label_11031;
 }
 else 
 {
 goto label_11031;
 }
 }
 }
 else 
 {
 send3 = node3__m3;
 goto label_10708;
 }
 }
 else 
 {
 goto label_10708;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 }
 else 
 {
 if (((int)node2__m2) == ((int)id2))
 {
 st2 = 1;
 goto label_10970;
 }
 else 
 {
 goto label_10970;
 }
 }
 }
 else 
 {
 send2 = node2__m2;
 goto label_10696;
 }
 }
 else 
 {
 goto label_10696;
 }
 }
 else 
 {
 return __return_main;
 }
 }
 }
 else 
 {
 if (((int)node1__m1) == ((int)id1))
 {
 st1 = 1;
 goto label_10980;
 }
 else 
 {
 goto label_10980;
 }
 }
 }
 else 
 {
 send1 = node1__m1;
 goto label_10683;
 }
 }
 else 
 {
 goto label_10683;
 }
 }
 }
 else 
 {
 return __return_main;
 }
 }
 }
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
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 node4____CPAchecker_TMP_0 = p4_new;
 goto label_10641;
 }
 }
 else 
 {
 if (((int)send4) != ((int)id4))
 {
 int node4____CPAchecker_TMP_1;
 if (send4 != nomsg)
 {
 if (p4_new == nomsg)
 {
 node4____CPAchecker_TMP_1 = send4;
 label_10995:; 
 p4_new = node4____CPAchecker_TMP_1;
 goto label_10643;
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 node4____CPAchecker_TMP_1 = p4_new;
 goto label_10995;
 }
 }
 else 
 {
 goto label_10643;
 }
 }
 }
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 node3____CPAchecker_TMP_0 = p3_new;
 goto label_10624;
 }
 }
 else 
 {
 if (((int)send3) != ((int)id3))
 {
 int node3____CPAchecker_TMP_1;
 if (send3 != nomsg)
 {
 if (p3_new == nomsg)
 {
 node3____CPAchecker_TMP_1 = send3;
 label_11020:; 
 p3_new = node3____CPAchecker_TMP_1;
 goto label_10626;
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 node3____CPAchecker_TMP_1 = p3_new;
 goto label_11020;
 }
 }
 else 
 {
 goto label_10626;
 }
 }
 }
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 node2____CPAchecker_TMP_0 = p2_new;
 goto label_10607;
 }
 }
 else 
 {
 if (((int)send2) != ((int)id2))
 {
 int node2____CPAchecker_TMP_1;
 if (send2 != nomsg)
 {
 if (p2_new == nomsg)
 {
 node2____CPAchecker_TMP_1 = send2;
 label_11040:; 
 p2_new = node2____CPAchecker_TMP_1;
 goto label_10609;
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 node2____CPAchecker_TMP_1 = p2_new;
 goto label_11040;
 }
 }
 else 
 {
 goto label_10609;
 }
 }
 }
 }
 }
 else 
 {
 return __return_main;
 }
 }
 else 
 {
 node1____CPAchecker_TMP_0 = p1_new;
 goto label_10591;
 }
 }
 else 
 {
 goto label_10586;
 }
 }
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
 }
