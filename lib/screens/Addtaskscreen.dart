import 'package:flutter/material.dart';
class addtask extends StatefulWidget {
  const addtask({Key? key}) : super(key: key);

  @override
  State<addtask> createState() => _addtaskState();
}

class _addtaskState extends State<addtask> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 50,left: 60,right: 60),
          child: SafeArea(
            child: Column(

mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
Text("Task-To-Do",style: TextStyle(color: Colors.blueAccent,fontSize: 30,fontWeight: FontWeight.w800),),
                TextField(
                  autofocus: true,
style: TextStyle(color: Colors.red,fontWeight: FontWeight.w500,fontSize: 20),
                ),
                FlatButton(
                  color: Colors.blueAccent,
                  child: Text('Add task'),
                  onPressed: (){},
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
