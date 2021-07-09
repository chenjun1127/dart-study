class Person {
  int age = 20;
  String name = "Lucy";
  String address = "";

  // 默认构造函数
  Person(this.age, this.name, this.address);

  // 无参构造函数，使用命名
  Person.noArgs();

  // 命名构造函数
  Person.origin(this.age, this.name, this.address) {
    age = age;
    name = name;
    address = address;
  }

  @override
  String toString() {
    return 'Person{age: $age, name: $name, address: $address}';
  }

  String getUserInfo([String? sex, String? birthday, String? hobbies]) {
    return 'Person{age: $age, name: $name, address: $address, sex: $sex, birthday: $birthday, hobbies: $hobbies}';
  }

  String get info => "Person{age: $age, name: $name, address: $address}";
  // ?表示可为空
  String? get area {
    if (this.address.isNotEmpty) {
      return this.address.substring(0, 6);
    }
    return null;
  }

  void set area(String? s) {
    // ！表示非空断言，s!表示非空（即存在）的情况下
    if (s!.isEmpty) {
      this.address = "深圳市南山区桃园街道宝能科技园3楼";
    } else {
      this.address = s;
    }
  }
}
