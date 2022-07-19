import 'package:eshop/screens/login_screen.dart';
import 'package:eshop/screens/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "/login":(BuildContext contex) => LoginScreen(),
        "/register":(BuildContext contex) => RegisterScreen(),
      },
        initialRoute: "/login",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),



    );
  }
}