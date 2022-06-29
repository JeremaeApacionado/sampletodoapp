import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String _username = 'admin';
  String get username => _username;
  set username(String newValue) {
    _username = newValue;
    notifyListeners();
  }
}
