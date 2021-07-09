import '../entities/girl.dart';

void main() {
  Girl judy = Girl("女", "1990-03-25", "打游戏，听音乐", 24, "Judy", "深圳市罗湖区金光华光场3楼");
  judy.printInfo(judy.sex, judy.birthday, judy.hobbies);
}
