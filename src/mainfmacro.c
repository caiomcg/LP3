#define OFFSET_VALUE 10

#define OFFSET_FUNCTION(val) val + OFFSET_VALUE

int main(int argc, char** argv) {
	int x;

	if (argc > 1) {
		x = 2;
	} else {
		x = 1;
	}

	int y = 3 * OFFSET_FUNCTION(x);

	return y; 
}