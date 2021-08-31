class SingleTon {
  int x;
  int y;
  SingleTon._internal(this.x, this.y);
  static SingleTon? instance;
  static getInstance() {
    return instance ?? SingleTon._internal(1, 1);
  }

  factory SingleTon() => getInstance();
}

void main() {
  SingleTon s1 = SingleTon();
  SingleTon s2 = SingleTon();
  print(s1 == s2);
  print(s1.x == s2.x);
}
