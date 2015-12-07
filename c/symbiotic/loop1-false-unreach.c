unsigned long add_with_check(unsigned long a, int i)
{
	if (i*i > a)
		a -= i;
	if (a + i <= 2000000000)
		a += i;

	return a;
}

int main(void)
{
	unsigned long a = 0;
	unsigned long i = 0;
	for (; i < 2000000000; ++i) {
		if (i % 3 == 0)
			continue;

		a = add_with_check(a, i);
	}

	__VERIFIER_assert(i % 3 == 0);

	return 0;
}
