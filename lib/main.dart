import 'package:flutter/material.dart';
import 'package:flutter_login/get_started.dart';
import 'package:flutter_login/home_page.dart';
import 'package:flutter_login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => GetStarted(),
        '/login': (context) => Login(),
        '/home_page': (context) => HomePage()
      },
    );
  }
}
