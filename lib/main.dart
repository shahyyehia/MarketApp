import 'package:flutter/material.dart';
import 'package:market_app/LoginPage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  //await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
