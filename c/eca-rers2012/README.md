<!--
This file is part of the SV-Benchmarks collection of verification tasks:
https://github.com/sosy-lab/sv-benchmarks

SPDX-FileCopyrightText: 2012 The RERS Challenge <https://www.rers-challenge.org>
SPDX-FileCopyrightText: 2014-2020 The SV-Benchmarks Community

SPDX-License-Identifier: Apache-2.0
-->

Contributed by: RERS Grey Box Challenge 2012
http://www.rers-challenge.org/2012/index.php?page=download

Documentation of the challenge:
Falk Howar, Malte Isberner, Maik Merten, Bernhard Steffen, and Dirk Beyer.
The RERS Grey-Box Challenge 2012: Analysis of Event-Condition-Action Systems.
Proc. ISoLA, Springer, 2012.

The C files were taken from the website above and processed with the following script:


#!/bin/sh

for p in `seq 1 19`; do
	# Filter for illegal inputs, depends on problem
	case "$p" in
	2 | 9)
		ILLEGAL_INPUTS='(input != 1) && (input != 3) && (input != 4) && (input != 5) && (input != 6)'
		;;
	10 | 13)
		ILLEGAL_INPUTS='(input != 2) && (input != 3) && (input != 4) && (input != 5) && (input != 6)'
		;;
	*)
		ILLEGAL_INPUTS='(input != 1) && (input != 2) && (input != 3) && (input != 4) && (input != 5) && (input != 6)'
		;;
	esac

	for l in `seq 0 59`; do
		sed Problem${p}.c > Problem$(printf "%02d" "$p")_label$(printf "%02d" "$l").c \
		sed Problem${p}.c > Problem$(printf "%02d" "$p")_label${l}.c \
			-e "1 i extern void __VERIFIER_error(void);" \
			-e "1 i extern int __VERIFIER_nondet_int(void);" \
			-e "1 i extern void exit(int);" \
			-e '/#include/ d' \
			-e '/if(output/,+3 d' \
			-e 's/scanf.*/input = __VERIFIER_nondet_int();/' \
			-e '/input = __VERIFIER_nondet_int()/ a \        if ('"$ILLEGAL_INPUTS"') return -2;' \
			-e "s/\(error_${l}:\) assert(0);/\1 __VERIFIER_error();/" \
			-e "s/\(error_[0-9]*:\) assert(0);/\1 exit(0);/" \
			-e "s/\(globalError:\) assert(0);/\1 exit(0);/" \
			;
	done
done





2015-07-13 Matthias Heizmann made files C11 compliant (avoid implicit function 
declarations) with the following script.

#!/bin/sh
for f in ./*.c; do
	cat "$f"|grep "int calculate_output[^(]" > "$f".decl
	if [[ -s "$f".decl ]] ; then
		sed -i 's/..$/;/g' "$f".decl
		echo "" >> "$f".decl
		line=$(grep -n '	int calculate_output(int input) {' "$f" | cut -d ":" -f 1)
		mv "$f" "$f".tmp
		{ head -n $(($line-1)) "$f".tmp; cat "$f".decl; tail -n +$line "$f".tmp; } > "$f"
		rm "$f".tmp
	fi ;
	rm "$f".decl
done;
