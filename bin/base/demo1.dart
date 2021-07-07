import "../entities/girl.dart";

void main() {
  var i = Girl.noArgs();
  print(i.name);
  print(i.toString());
  var g = Girl(24, "Eric", "");
  print(g.name);
  print(g.toString());
  var p = Girl.origin(30, "Alex", "Shenzhen");
  print(p.name);
  print(p.info);
}
