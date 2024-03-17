import 'package:cocking_recipes/Logo_page.dart';
import 'package:cocking_recipes/detail_dishes.dart';
import 'package:cocking_recipes/login_page.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: LogoPage(),
    );
  }
}
