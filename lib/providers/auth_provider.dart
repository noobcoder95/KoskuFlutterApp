import 'package:Koskuappfront/models/models.dart';
import 'package:Koskuappfront/services/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  User _user;
  User get user => _user;

  set user(User user) {
    _user = user;

    notifyListeners();
  }

  Future<bool> register({
    String name,
    String email,
    String phone,
    String password,
  }) async {
    try {
      User user = await AuthService().register(
        name: name,
        email: email,
        phone: phone,
        password: password,
      );
      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  //login atuh provider

  Future<bool> login({
    String email,
    String password,
  }) async {
    try {
      User user = await AuthService().login(
        email: email,
        password: password,
      );
      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
