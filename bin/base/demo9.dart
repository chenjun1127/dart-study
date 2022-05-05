void main() {
  final Student p = Student("Jack", 30, "伊丽莎白女王学校", country: "UK", city: "London");
  print(p.name);
  print(p.age);
  print(p.area);
  print(p.school);
  final Student s = Student.fac("Tony", 24, "中国人民大学附属中学",);
  print(s.name);
  print(s.age);
  print(s.area);
  print(s.school);
}

class Person {
  String? name;
  int? age;
  Person(this.name, this.age);
}

class Student extends Person {
  String? _school;
  String? name;
  String? area;
  int? age;
  String? country;
  String? city;
  Student(this.name, this.age, this._school,
      {this.country = "China", this.city="Beijing", String? area})
      : area = area ?? "$country-$city",
        super(name, age) {}
  factory Student.fac(String? name, int? age, String? school) {
    return Student(name, age, school);
  }
  //_school是私有属性，外部访问要公有
  //可以直接实例化的per.school访问
  String? get school => _school;

  //设置的时候，控制修改
  //实例化per.school="123";赋值的时候会调用
  set school(String? val) {
    _school = val;
  }
}
