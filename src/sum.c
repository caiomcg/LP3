#define SIZE 5

int x[SIZE] = {1,2,3,4,5};

int sum(void) {
	int i;
	int acc = 0;

	for (i = 0; i < SIZE; i++) 
		acc += x[i];

	return acc;
}

int main(void) {
	int sum_value = sum();

	return sum_value;
}