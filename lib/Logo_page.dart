import 'dart:async';

import 'package:cocking_recipes/HomePage.dart';
import 'package:flutter/material.dart';

class LogoPage extends StatefulWidget {
  const LogoPage({super.key});

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=>HomePage()));


    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('Cheifs',style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 30,
            color: Theme.of(context).colorScheme.inversePrimary
          ),),
        ),
      ),
    );
  }
}
