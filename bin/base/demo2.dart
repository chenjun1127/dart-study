class ListDemo {
  List<String> list = ['apples', 'bananas', 'oranges'];

  printList() {
    list.forEach((item) {
      print('${list.indexOf(item)}: $item');
    });
  }
}
