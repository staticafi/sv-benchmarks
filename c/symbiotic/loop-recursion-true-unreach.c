void proc2(unsigned long *a, int count);

void proc1(unsigned long *a, int count)
{
	if (count > 1)
		proc2(a, count - 1);

}

void proc2(unsigned long *a, int count)
{
	if (count > 1)
		proc1(a, count - 1);

}

int main(void)
{
	unsigned long a = 0;
	int i = __VERIFIER_nondet_int();
	int i2;
	for (i2 = 0; i2 < i; ++i2) {
		proc1(&a, 1000);
		proc2(&a, 1000);
	}

	__VERIFIER_assert(a*a*a*a % 3 == 0);

	return 0;
}
