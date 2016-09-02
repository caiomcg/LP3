# 1 "sumdata.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "sumdata.c"
int x[5] = {1,2,3,4,5};

int sum(int sum_even) {
 int i;
 int acc = 0;

 for (i = 0; i < 5; i++)
  if ((!sum_even) || (!(x[i] % 2)))
   acc += x[i];

 return acc;
}
