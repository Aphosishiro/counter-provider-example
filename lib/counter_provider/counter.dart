import 'package:flutter/material.dart';

//create a class with the change notifer that allows us listen for changed events
class Counter extends ChangeNotifier {
  //create a variable int for the count
  int _count = 0;
//create a getter so we can access the count outside this file
  int get count => _count;

  void add() {
    _count++;
    notifyListeners();
  }

  void subtract() {
    _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}

