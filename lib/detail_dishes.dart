import 'package:cocking_recipes/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsDishes extends StatelessWidget {
  int itemIndex;

  DetailsDishes({required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    var  listde=getsProduct.podlist[itemIndex];
    return Scaffold(
      appBar: AppBar(
        title: Text(listde['proname'],style: TextStyle(
          color: Theme.of(context).colorScheme.inversePrimary,
          fontWeight: FontWeight.w700
        ),),
        centerTitle: true,
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color:Colors.grey,
                          blurRadius: 3,
                          spreadRadius: 1
                      )
                    ],
                  ),
                  child: Image.asset(listde['proimage'],),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Veg Salad',style: TextStyle(
                      fontWeight: FontWeight.w700
                    ),),
                  ),
                  SizedBox(width: 100),
                  Text('👌 4.8 ',style: TextStyle(
                      fontWeight: FontWeight.w700
                  ),),
                  Text('(542 Ratings)',style: TextStyle(
                      fontWeight: FontWeight.w500
                  ),)

                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color:Color(0XFFFDCF0E2),
                      boxShadow: [
                        BoxShadow(
                            color:Colors.grey,
                            blurRadius: 3,
                            spreadRadius: 1
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.timelapse_rounded,color: Color(0XFFF3199C4C),),
                        Text('30 min',style: TextStyle(
                          color: Color(0XFFF319C4C),
                        ),),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Color(0XFFFFBF4E1),
                      boxShadow: [
                        BoxShadow(
                            color:Colors.grey,
                            blurRadius: 3,
                            spreadRadius: 1
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.emoji_emotions_outlined,color: Color
                          (0XFFFFECD36),),
                        Text('Easy',style: TextStyle(
                          color: Color(0XFFFFECD36),
                        ),),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Color(0XFFFE0EFF8),
                      boxShadow: [
                        BoxShadow(
                            color:Colors.grey,
                            blurRadius: 3,
                            spreadRadius: 1
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.fire_hydrant_alt_rounded,color: Color(0XFFF2685C5),),
                        Text('230 kacl',style: TextStyle(
                          color: Color(0XFFF2685C5),
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Ingredient',style: TextStyle(
                      fontWeight: FontWeight.w700
                    ),),
                  ),
                  Text('See all',style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.inversePrimary
                  ),),
                ],
              ),
              //SizedBox(height: 10),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color:Colors.grey,
                          blurRadius: 3,
                          spreadRadius: 1
                      )
                    ],
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Start by checking your mussels and removing any '
                        'dead ones that remain open after shaking in a colander '
                        'under some cold running water. \n Debeard them and then '
                        'leave in a bowl of ice covered with a damp cloth until you'
                        ' plan to cook them.\n '
                       ' Heat your coconut oil in a large pan and add in all your Then cover with a lid and cook for 4-5 mins',
                      overflow: TextOverflow.visible),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
