import 'package:cocking_recipes/main_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupPage extends StatefulWidget {


  @override
  State<SignupPage> createState() => _SignupPage();
}

class _SignupPage extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                Text('Create Account',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      color: Theme.of(context).colorScheme.inversePrimary
                  ),),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text('Email Address',style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),),
              ],
            ),
            SizedBox(height: 15),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration:InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  )
              ),

            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text('Password',style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700
                ),),
              ],
            ),
            SizedBox(height: 15),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration:InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  )
              ),

            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text('Confirm Password',style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700
                ),),
              ],
            ),
            SizedBox(height: 15),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration:InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  )
              ),

            ),
            SizedBox(height: 30),
            ElevatedButton(
                style:ElevatedButton.styleFrom(
                    fixedSize: Size(300, 45),
                    backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                    foregroundColor: Colors.white
                ),
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>MainMenu()));
                }, child: Text('Create')),
            SizedBox(height: 15),

          ],
        ),
      ),
    );
  }
}
