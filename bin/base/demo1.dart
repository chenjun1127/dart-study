import "../entities/person.dart";

void main() {
  var i = Person.noArgs();
  print(i.name);
  print(i.getUserInfo());
  var g = Person(24, "Eric", "广州市海珠区珠江新城体育中心");
  print(g.name);
  print(g.toString());
  var p = Person.origin(30, "Alex", "深圳市龙岗区坂田街道南坑村1号");
  print(p.name);
  print(p.info);
  print(p.address);
  print(p.area);
  p.area = "";
  print(p.area);
  p.area = "东莞市黄江镇碧桂园翡翠山一期4栋201";
  print(p.area);
  print(p.address);
  print(p.getUserInfo());
}
