struct vector{
	float v[4];
	float mean;
};

void meanVec(struct vector* v) {
	v->mean = (v->v[0] + v->v[1] + v->v[2] + v->v[3]) * 0.25f;
}

void copyVec(struct vector* v1, struct vector* v2) {
	v2->v[0] = v1->v[0];
	v2->v[1] = v1->v[1];
	v2->v[2] = v1->v[2];
	v2->v[3] = v1->v[3];
	v2->mean = v1->mean;
}

void sumVec(struct vector* v1, struct vector* v2, struct vector* v3) {
	v3->v[0] = v1->v[0] + v2->v[0];
	v3->v[1] = v1->v[1] + v2->v[1];
	v3->v[2] = v1->v[2] + v2->v[2];
	v3->v[3] = v1->v[3] + v2->v[3];
	v3->mean = v1->mean + v2->mean;
}

int main(void) {
	struct vector a, b, c;

	copyVec(a, b);

	sumVec(a,b,c);

	return 0;
}