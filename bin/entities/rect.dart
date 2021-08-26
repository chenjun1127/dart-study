class Rect {
  int height;
  int width;
  // 构造函数中初始化列表
  Rect(): height = 20, width = 10 {}
  getArea() {
    return this.width * this.height;
  }
}

void main() {
  Rect rect = Rect();
  print(rect.getArea());
}
