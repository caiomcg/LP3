# 1 "inline2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "inline2.c"
inline void InsertionSort(int* v, int size) {
 int i;
 int j;
 int key;


 for(i = 1; i < size; i++) {
  key = v[i];
  j = i - 1;

  while((j >= 0) && (v[j] > key)) {
   v[j + i] = v[j];
   j = j -1;
  }

  v[j + i] = key;
 }
}

int y[5] = {5,4,3,2,1};

int main(void) {
 InsertionSort(y, 5);
 return y[0];
}
