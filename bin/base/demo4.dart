void main() {
  var n1 = 100;
  var n2 = 3;
  var result = n1 ~/ n2; // 返回除数
  var result1 = n1 / n2; // 返回除以的结果
  var result2 = n1 % n2; // 返回余数
  print(result);
  print(result1);
  print(result2);
  // 返回减一，零或加一，具体取决于数字的符号和数值。
  // 如果数字小于零，则此属性返回减1，如果数字大于零，则返回1，如果数字等于零，则返回0。
  var n3 = 31111;
  print(n3.sign);
}
