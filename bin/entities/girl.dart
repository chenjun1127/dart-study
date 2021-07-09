import 'person.dart';

class Girl extends Person {
  late String birthday; // 延迟初始化
  late String hobbies;
  late String sex;
  Girl(String sex, String birthday, String hobbies, int age, String name,
      String address)
      : super(age, name, address) {
    this.sex = sex;
    this.birthday = birthday;
    this.hobbies = hobbies;
  }
  void printInfo(String sex, String birthday, String hobbies) {
    String s = super.getUserInfo(sex, birthday, hobbies);
    print(s);
  }
}
