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
}
