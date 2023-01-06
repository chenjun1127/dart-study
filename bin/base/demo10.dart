void main(List<String> args) {
  TestFunc testFunc = test;
  testFunc(1, 3);
  test1(1,4,testFunc);
}

typedef TestFunc(int a, int b);
void test(int a, int b) {
  print("a+b=${a + b}");
}

void test1(int a,int b,TestFunc testFunc){
  testFunc(a,b);
}