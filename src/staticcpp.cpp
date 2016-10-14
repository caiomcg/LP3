class CPPClass {
public:
	static int _x;

	static void set(int a) {
		_x = a;
	}
};

int main() {
	CPPClass::set(2);
	return 0;
}