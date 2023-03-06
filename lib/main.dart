import 'package:flutter/material.dart';
import 'package:porperty_app/pages/login.dart';
import 'package:porperty_app/pages/login2.dart';
import 'pages/root.dart';
import 'theme/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate App',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: Login2(),
      // home: RootApp(),
    );
  }
}
