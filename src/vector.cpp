class Vector {
private:
	float _v[4] = {0.0f, 0.0f, 0.0f, 0.0f};
	float _mean = 0.0f;

	void setMean() {
		_mean = (_v[0] + _v[1] + _v[2] + _v[3]) * 0.25f;
	}

public:
	Vector() {
	}
	~Vector(){
	}

	void copyFrom(Vector a) {
		_v[0] = a._v[0];
		_v[1] = a._v[1];
		_v[2] = a._v[2];
		_v[3] = a._v[3];
		_mean = a._mean;
	}

	void sum(Vector a) {
		_v[0] += a._v[0];
		_v[1] += a._v[1];
		_v[2] += a._v[2];
		_v[3] += a._v[3];
		_mean += a._mean;
	}

	void setValues(float v0, float v1, float v2, float v3) {
		_v[0] = v0;
		_v[1] = v1;
		_v[2] = v2;
		_v[3] = v3;
		setMean();
	}

	void getValues(float* v0,float* v1,float* v2,float* v3) const {
		*v0 = _v[0];
		*v1 = _v[1];
		*v2 = _v[2];
		*v3 = _v[3];
	}

	float getMean(void)  {
		return _mean;
	}
};

class Color {
public:
	const Vector _rgba;
};

int main(void) {
	Color c;

	//c._rgba.setValues(1.0f, 0.0f, 0.0f, 1.0f);

	return c._rgba.getMean();
}