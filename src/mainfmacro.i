# 1 "mainfmacro.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "mainfmacro.c"




int main(int argc, char** argv) {
 int x;

 if (argc > 1) {
  x = 2;
 } else {
  x = 1;
 }

 int y = x + 10;

 return y;
}
