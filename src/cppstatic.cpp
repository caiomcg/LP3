#include <iostream>

class Dummy {
public:
	static int _x;
	int y;
	Dummy() {
		y = _x++;
	}
};

//int Dummy::_x = 1;

int main(void) {
	Dummy a;
	Dummy b;
	Dummy c;

	std::cout << a.y << std::endl;
	std::cout << b.y << std::endl;
	std::cout << c.y << std::endl;

	return 0;
}