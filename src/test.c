#include <stdio.h>
#include <stdlib.h>

void test(int** a) {
	int* x = (int*) malloc(4);
	*x = 5000;
	*a = x;

	printf("%d\n", *x);
}

int main(void) {
	int a = 10;
	int* x = &a;
	printf("%d\n", *x);
	test(&x);
	printf("%d\n", *x);
	return *x;
}