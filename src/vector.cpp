class vector {
public:
	float _v[4];
	float _mean;

	vector() : _mean(0.0f) {
		_v[0] = 0.0f;
		_v[1] = 0.0f;
		_v[2] = 0.0f;
		_v[3] = 0.0f;
	}
	~vector(){}

	void setMean() {
		_mean = (_v[0] + _v[1] + _v[2] + _v[3]) * 0.25f;
	}

	void copyFrom(vector a) {
		_v[0] = a._v[0];
		_v[1] = a._v[1];
		_v[2] = a._v[2];
		_v[3] = a._v[3];
		_mean = a._mean;
	}

	void sum(vector a) {
		_v[0] += a._v[0];
		_v[1] += a._v[1];
		_v[2] += a._v[2];
		_v[3] += a._v[3];
		_mean += a._mean;
	}
};

int main(void) {
	vector a, b, c;

	return 0;
}