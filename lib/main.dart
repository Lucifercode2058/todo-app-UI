import 'package:flutter/material.dart';
import 'screens/welcome.dart';
void main(){
  runApp(Homescreen());

}

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: welcome(),
    );
  }
}
