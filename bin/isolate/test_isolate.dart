import 'dart:async';
import 'dart:isolate';

var i = 0;
IntObject intObject = IntObject();

class IntObject {
  int _i = 0;
  void increase() {
    _i++;
  }

  int get() => _i;
}

void main() async {
  //Isolate的消息接收端口
  final receivePort = ReceivePort();
  //为消息接收端口添加监听
  receivePort.listen((msg) {
    print("Main: Receive data = $msg, i = $i, intObject = ${intObject.get()}");
  });
  // 创建一个Isolate实例，1.指定入口函数 2.指定消息通信发送端口
  await Isolate.spawn(isolateFunction, receivePort.sendPort);
  print(DateTime.now().toString() + " start...");
}

void isolateFunction(SendPort sendPort) {
  int counter = 0;
  Timer.periodic(Duration(seconds: 3), (timer) {
    counter++;
    i++;
    intObject.increase();
    String sendMsg = "Notification data: $counter";
    print(DateTime.now().toString() +
        " Isolate: counter = $counter, i = $i, intObject = ${intObject.get()}");
    sendPort.send(sendMsg);
  });
}
// 参考：https://blog.csdn.net/joye123/article/details/102913497