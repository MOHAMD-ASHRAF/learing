import 'package:flutter/material.dart';
import 'package:learning/modules/bmi_sesult/bmi_result.dart';
import 'package:learning/modules/bmi/bmi_screen.dart';
import 'package:learning/modules/users/data_model.dart';
import 'package:learning/modules/home/home_screen.dart';
import 'package:learning/modules/login/login.dart';
import 'package:learning/modules/messanger/messanger_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    );
  }
}
