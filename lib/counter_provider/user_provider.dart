import 'package:flutter/material.dart';

class User extends ChangeNotifier {
  final List<String> _user = ["Daniel", "TEEJAY", "Kayode"];

  int get number => user.length;
  List<String> get user => _user;

  void addUser(String user) {
    _user.add(user);
    notifyListeners();
  }
   void removeUser(String user) {
    _user.remove(user);
    notifyListeners();
  }
}
