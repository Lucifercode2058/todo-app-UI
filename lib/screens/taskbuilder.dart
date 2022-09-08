import 'package:flutter/material.dart';
class Task {
  bool ischeck = true;
  String? name;
  Task({@required this.name});
  void pressed() {
    ischeck = !ischeck;
  }
}
