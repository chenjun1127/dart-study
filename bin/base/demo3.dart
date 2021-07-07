import 'dart:collection';

void main() {
  /*****************Set******************/
  var ingredients = Set();
  ingredients.addAll(['gold', 'titanium', 'xenon']);

  // 创建两个 set 的交集。
  var nobleGases = Set.from(['xenon', 'argon']);
  var intersection = ingredients.intersection(nobleGases);
  print(intersection);
  /*****************Map******************/
  Map m = {'name': 'Tom', 'Id': 'E1001'};
  print('Map :${m}');

  m.addAll({'dept': 'HR', 'email': 'tom@xyz.com'});
  // 如果当且仅当该 key 不存在于 map 中，且要为这个 key 赋值， 可使用putIfAbsent（）方法。 该方法需要一个方法返回这个 value 。
  m.putIfAbsent("area", () => "湖北省武汉市");
  print('Map after adding  entries :${m}');
  /*****************List******************/
  var teas = ['green', 'black', 'chamomile', 'earl grey'];
  var t = teas.where((element) => element.contains("e"));
  print(t);
}
