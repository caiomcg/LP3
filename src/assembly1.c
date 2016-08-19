int x = 10;
int y;

int main() {
	int w;
	y = 20;
	w = x + y;
	return 0;
}

//gcc -S -fno-asynchronous-unwind-tables assembly1.c