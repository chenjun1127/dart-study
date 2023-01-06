void main() {
  Singleton();
  Test();
}

class Singleton {
  static final Singleton _singleton = Singleton.named();

  factory Singleton() => _singleton;

  Singleton.named();
}

class Test {
  static final Test _test = Test.test();
  factory Test() => _test;
  Test.test() {
    print("工厂构造函数");
  }
}
