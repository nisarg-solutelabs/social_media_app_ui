import 'package:flutter/material.dart';
import 'package:ui_3/screens/login_scree.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: LoginScreen(),
    );
  }
}
