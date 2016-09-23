# 1 "class_cpp.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "class_cpp.cpp"
class CPPClass {
public:
 int x_;
 int y_;

 void set(int a, int b) {
  this->x_ = a;
  this->y_ = b;
 }

 int getX(){
  return this->x_;
 }
};

CPPClass cppobj;

int main(void) {
 cppobj.set(10, 20);
 return cppobj.getX();
}
