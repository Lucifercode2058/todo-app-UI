import 'package:flutter/material.dart';
import 'taskbuilder.dart';
class tasktiles extends StatelessWidget {

  String? tasktitle;
  bool? ischecked;
  void Function(bool?)? press;
  tasktiles({this.tasktitle, this.ischecked, this.press});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasktitle!,
        style: TextStyle(
            decoration: ischecked! ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.blueAccent,
        onChanged: press,
        value: ischecked,
      ),
    );
  }
}

