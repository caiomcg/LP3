#define SIZE 5

int x[SIZE] = {1,2,3,4,5};

int sum(int sum_even) {
	int i;
	int acc = 0;

	for (i = 0; i < SIZE; i++) 
		if ((!sum_even) || (!(x[i] % 2)))
			acc += x[i];

	return acc;
}