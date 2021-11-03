import 'package:flutter/material.dart';
import 'package:flutter_todo_mobx/pages/home_page.dart';
import 'package:flutter_todo_mobx/pages/login_page.dart';
import 'package:flutter_todo_mobx/pages/splash_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: LoginPage(),
      initialRoute: '/',
      routes: {
        '/login': (context) => LoginPage(),
        '/splash': (context) => SplashPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
