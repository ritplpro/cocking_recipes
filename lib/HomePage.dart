import 'package:cocking_recipes/login_page.dart';
import 'package:flutter/material.dart';
import 'main_menu.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),*/
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          SizedBox(height: 120,),
          Row(
            children: [
              Text('Express Yourself\nThrough Culinary',style:
              TextStyle(fontSize: 30,
                  fontWeight: FontWeight.w700),),
            ],
          ),
          Row(
            children: [
              Text('Dishes.',style:
              TextStyle(fontSize: 35,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.w800),),
            ],
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(right: 30),


              child: Image.asset("assets/images/chicken.png")),
          SizedBox(height: 20,),


          ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 45),
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                foregroundColor: Colors.white),
              onPressed: (){
                setState(() {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context)=> LoginPage()));


                });
                },
              child: Text('Get Started',
                style: TextStyle(
                    fontWeight: FontWeight.w800
                ),)),
          SizedBox(height: 10,),
          Text('Take me to login',style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.grey
          ),)


        ],),
      ),
    );

  }
}
