import 'dart:io';

void main() {
  createFile(["hello", "world"]);
}

Future<void> createFile(Iterable<String> objects) async {
  for (var object in objects) {
    try {
      var file = File("$object.txt");
      if (await file.exists()) {
        var modified = await file.lastModified();
        print('File for $object already exists. It was modified on $modified.');
        continue;
      }
      await file.create();
      await file.writeAsString("Start describing $object in this file.'");
    } on IOException catch (e) {
      print('Cannot create description for $object: $e');
    }
  }
}
