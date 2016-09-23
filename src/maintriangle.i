# 1 "maintriangle.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "maintriangle.c"
# 1 "vertex.h" 1



struct vertex{
 float position[3];
 float normal[3];
};
# 2 "maintriangle.c" 2
# 1 "triangle.h" 1


struct triangle {
 struct vertex vertices[3];
};
# 3 "maintriangle.c" 2

int main(void) {
 struct vertex v;

 struct triangle t;

 return 0;
}
