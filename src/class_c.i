# 1 "class_c.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "class_c.c"
struct CClass {
 int x_;
 int y_;
};

void set(struct CClass* this, int a, int b) {
 this->x_ = a;
 this->y_ = b;
}

int getX(struct CClass* this) {
 this->x_;
}

struct CClass obj;

int main(void) {
 set(&obj, 10, 20);
 return getX(&obj);
}
