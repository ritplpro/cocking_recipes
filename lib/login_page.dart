import 'package:cocking_recipes/main_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          children: [
            SizedBox(height: 100,),
            Row(
              children: [
                Text('Welcome Back',
                  style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                      color: Theme.of(context).colorScheme.inversePrimary
                ),),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text('Hello again you have been missed',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey
                ),),
              ],
            ),
            SizedBox(height: 15),
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
            ElevatedButton(
                style:ElevatedButton.styleFrom(
                  fixedSize: Size(300, 45),
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  foregroundColor: Colors.white
                ),
                onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>MainMenu()));
                }, child: Text('Login')),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: Text('forgot Password ?')),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  height: 2,
                  color: Colors.black12,
                ),
                Text('Or Login With'),
                Container(
                  width: 130,
                  height: 2,
                  color: Colors.black12,
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 3,
                        color: Colors.grey

                      )

                    ],
                    borderRadius: BorderRadius.circular(75),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){},
                      child:Image.asset('assets/images/new.png',
                        fit:BoxFit.fill),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 3,
                          color: Colors.grey

                      )

                    ],
                    borderRadius: BorderRadius.circular(75),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){},
                      child:Image.asset('assets/images/apple-logo.png',
                        fit:BoxFit.fill),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 3,
                          color: Colors.grey

                      )

                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(75),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){},
                      child:Image.asset('assets/images/facebook.png',
                        fit: BoxFit.fill),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don`t have an account?'),
                TextButton(onPressed: (){}, child: Text('Sign up now'))
              ],
            ),

          ],
        ),
      ),
    );
  }
}
