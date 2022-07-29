part of 'models.dart';

class User {
  int id;
  String name;
  String email;
  String phone;
  String password;
  String roles;
  String token;

  User({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.password,
    this.roles,
    this.token,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    password = json['password'];
    roles = json['roles'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'roles': roles,
      'token': token,
    };
  }
}

User mockUser = User(
  id: 1,
  name: 'Khoirul Muttaqin',
  email: 'khoirul@gmail.com',
  phone: '62877959596',
);
