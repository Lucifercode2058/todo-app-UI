import 'package:flutter/material.dart';
import 'Addtaskscreen.dart';
import 'taskbuilder.dart';
import 'tasktiles.dart';
import 'listview.dart';


class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (BuildContext context) => addtask());
        },
      ),
      backgroundColor: Colors.blueAccent,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          margin: EdgeInsets.only(left: 30, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 30,
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                'TO-DO',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '12 tasks remaing',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
child: tasklist(),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
        ))
      ]),
    );
  }
}




