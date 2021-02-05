
class Profile {
  int id;
  String name;
  String phone;
  String email;

  Map<String, dynamic> toMap() {
    Map map = <String, dynamic>{
      'name': name,
      'email': email,
      'phone': phone,
    };

    if (id != null) {
      map['id'] = id;
    }
    return map;
  }
}