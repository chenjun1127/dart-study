class People {
  String? name;
  int age = 28;
  bool get isUnderAge => this.age > 18;
  String? _birthday;
  set isUnderAge(value) {
    age = value;
  }

  void run() {
    print("Person running...");
  }

  void printin() {
    print("My name is $name, age is $age, I am ${isUnderAge ? 'an adult' : 'a minor'}");
  }
}

class Student extends People {
  void study() {
    print("Student studying...");
  }

  @override
  void run() {
    print("My name is $name, I am running...");
  }
}

void main() {
  print("-------继承-----");
  Student student = new Student();
  student.age = 30;
  student.name = "Lucy";
  print(student.isUnderAge);
  student.isUnderAge = 12;
  student._birthday = "1990-02-01";
  print(student.isUnderAge);
  print(student._birthday);
  student.printin();
  student.study();
  student.run();
  print("-------多态-----");
  People people = new Student();
  people.name = "lucy";
  people.printin();
  // people.study(); 这里无法访问到子类的方法，因为使用多态生成的对象是 People, People 中没有study方法
  // 使用 is 表示将 people 转换为了 Student，下面就可以访问了
  if (people is Student) {
    people.study();
  }
}
