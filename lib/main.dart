import 'package:flutter/material.dart';
import 'package:login_apps/homeScreen.dart';
import 'package:login_apps/login.dart';
import 'package:login_apps/mideiaPlayer.dart';
import 'package:login_apps/registration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.path,
      routes: {
        LoginPage.path: (context) => LoginPage(),
        Homescreen.path: (context) => Homescreen(),
        MideiaPlayer.path: (context) => MideiaPlayer(),
        Registration.path: (context) => Registration(),
      },
    );
  }
}
