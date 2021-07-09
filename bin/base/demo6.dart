class Bird {
  Fly fly;
  Bird(this.fly);
}

// typedef 给某一种特定的函数类型起了一个名字，可以认为是一个类型的别名，可以类比class和对象这样理解：自己定义了一种数据类型，不过这种数据类型是函数类型，一个一个的具体实现的函数就相当于按照这种类型实例化的对象会有类型检查
typedef Fly = void Function(int value);
void main() {
  Bird bird = Bird((value) {
    print(value);
  });
  bird.fly(3);
}
