class Girl {
  int age = 20;
  String name = "Lucy";
  String address = "";

  // 默认构造函数
  Girl(this.age, this.name, this.address);

  // 无参构造函数，使用命名
  Girl.noArgs();

  // 命名构造函数
  Girl.origin(this.age, this.name, this.address) {
    age = age;
    name = name;
    address = address;
  }

  @override
  String toString() {
    return 'Girl{age: $age, name: $name, address: $address}';
  }

  String get info => "Girl{age: $age, name: $name, address: $address}";
}
