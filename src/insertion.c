inline void InsertionSort(int* v, int size) {
	int i;
	int j;
	int key;


	for(i = 1; i < size; i++) {
		key = v[i];
		j = i - 1;

		while((j >= 0) && (v[j] > key)) {
			v[j + i] = v[j];
			j = j -1;
		}

		v[j + i] = key;
	}
}