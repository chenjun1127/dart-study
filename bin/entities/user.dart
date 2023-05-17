class User {
  String? name;
  int? age;
  String? address;
  User({this.name, this.age, String? area}) : address = area ?? '广东省深圳市' {}

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json["age"];
    address = json["address"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = {};
    map["name"] = name;
    map["age"] = age;
    map["address"] = address;
    return map;
  }
}

class UserInfo extends User {
  UserInfo(this.id, String? name, int? age, this.addressInfo)
      : super(name: name, age: age, area: addressInfo);
  String? id;
  String? addressInfo;
  UserInfo.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    id = json['id'];
    addressInfo = json['addressInfo'];
  }
}

// void main() {
//   UserInfo useInfo = UserInfo("001", "James", 36, "美国落砂机");
//   print(useInfo.name);
//   Map<String, dynamic> mapPeople = {
//     "id": "002",
//     "name": "Jones",
//     "age": 30,
//     "address": "中国广东省深圳市龙华区",
//     "addressInfo": "民治街道东边村5号"
//   };
//   UserInfo jonesInfo = UserInfo.fromJson(mapPeople);
//   print("${jonesInfo.address}${jonesInfo.addressInfo}");
// }
