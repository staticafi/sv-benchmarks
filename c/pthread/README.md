<!--
This file is part of the SV-Benchmarks collection of verification tasks:
https://github.com/sosy-lab/sv-benchmarks

SPDX-FileCopyrightText: 2011-2020 The SV-Benchmarks community

SPDX-License-Identifier: Apache-2.0
-->

Various small concurrent programs.

- `bigshot*`, `sigma*`, `singleton*`: Submitted by the CSeq project
- `triangular*`: Submitted by the CPAchecker project
- Remainder submitted by the ESBMC project.
  Some of these are described in https://doi.org/10.1145/1985793.1985839
  or https://dl.acm.org/doi/10.1145/1639622.1639631 (also cf. https://wiki.cs.byu.edu/vv-lab/concurrency-tool-comparison).

- `fib*`: Originated from the ESBMC and SV-COMP community, then modifies by the 2018 Nidhugg project. 
The original `fib*` contain the `N=5, 6(longer), 11(longest)` under `safe` and `unsafe` two versions. 
Then the 2018 Nidhugg project refactors and modifies these benchmarks with `N=5,6,7,10,11,12` under `safe` and `unsafe` two versions.