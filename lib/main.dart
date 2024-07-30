// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_svg/pages/login.dart';
import 'package:flutter_application_svg/pages/signup.dart';
import 'package:flutter_application_svg/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => welcoome(),
        '/login': (context) => const login(),
        '/signup': (context) => const signup(),
      },
    );
  }
}
