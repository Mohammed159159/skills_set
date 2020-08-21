import 'package:flutter/material.dart';
import 'package:skills_set/Screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Skills Set',
      theme: ThemeData(
        primaryColor: Colors.cyan[100],
      ),
      home: LogIn(),
    );
  }
}
