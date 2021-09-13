class MainHelper {
  String? name;
  int? timesTamp;
  factory MainHelper() {
    if (_instance == null) {
      _instance = MainHelper._interval("随机时间戳", DateTime.now().millisecondsSinceEpoch);
      _instance!.init();
    }
    return _instance!;
  }

  void init() {
    print("Factory 工厂构造函数实现单例");
  }

  static MainHelper? _instance;

  MainHelper._interval(this.name, this.timesTamp); // 私有构造方法
}

void main() {
  MainHelper helper = MainHelper();
  print(helper.name);
  print(helper.timesTamp);
}
