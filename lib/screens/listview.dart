import 'package:flutter/material.dart';
import 'tasktiles.dart';
import 'taskbuilder.dart';
import 'package:todo_app/screens/listview.dart';

class tasklist extends StatefulWidget {
  const tasklist({
    Key? key,
  }) : super(key: key);

  @override
  State<tasklist> createState() => _tasklistState();
}

class _tasklistState extends State<tasklist> {
  @override
  Widget build(BuildContext context) {
    List<Task> tasks = [
      Task(name: 'Buy car'),
      Task(name: 'buy house'),
      Task(name: 'helloworld'),
      Task(name: 'hy rab')
    ];
    return ListView.builder(
      itemBuilder: (context, int index) {
        return tasktiles(
          tasktitle: tasks[index].name,
          ischecked: tasks[index].ischeck,
          press: (bool? value) {
            setState(() {
              print(value);
              tasks[index].ischeck= value!;
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}


