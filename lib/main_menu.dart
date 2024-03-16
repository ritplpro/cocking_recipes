import 'package:cocking_recipes/detail_dishes.dart';
import 'package:cocking_recipes/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainMenu extends StatefulWidget {


  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: 80,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [

                        Text('Welcome Back!',style: TextStyle(
                          fontWeight: FontWeight.w500
                        ),),

                      ],
                    ),
                    Row(
                      children: [
                        Text(' Mahesh Kumar!',style: TextStyle(
                          fontWeight: FontWeight.w900
                        ),),
                      ],
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                    boxShadow: [
                      BoxShadow(
                          color:Colors.grey,
                          blurRadius: 3,
                          spreadRadius: 1
                      )
                    ],
                  ),
                  child: CircleAvatar(radius: 25,backgroundColor: Colors
                      .green.shade100,
                    child: Image.asset('assets/images/happy.png',width: 40,),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color:Colors.grey,
                    blurRadius: 3,
                    spreadRadius: 1
                )
              ],
            ),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon:Icon(Icons.search),
                  hintText: 'Search recipe or dishes',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text('Continue Cooking',style: TextStyle(fontWeight:
                FontWeight.w700),),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color:Colors.grey,
                      blurRadius: 3,
                      spreadRadius: 1
                  )
                ],
                borderRadius: BorderRadius.circular(30),
                  border:Border.all(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 10),
                      Text('Breakfast',style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.grey
                      ),),
                      SizedBox(height: 10),
                      Text('Chicken Salad',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                      ),),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.timelapse_rounded,
                              color: Theme.of(context).colorScheme.inversePrimary,),
                            Text('12 min'),
                            VerticalDivider(),
                            Icon(Icons.emoji_emotions,
                              color: Theme.of(context).colorScheme.inversePrimary,),
                            Text('Easy'),
                          ],
                        ),
                      ),


                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Container(
                        width: 160,
                        height: 180,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color:Colors.grey,
                              blurRadius: 5,
                              spreadRadius: 1
                            )
                          ],
                          color:Colors.green.shade100,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset('assets/images/cokies.png'),

                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  menuBars(doText: 'Lunch', onTaps: (){}),
                  SizedBox(width: 10),
                  menuBars(doText: 'Brunch', onTaps: (){}),
                  SizedBox(width: 10),
                  menuBars(doText: 'Breakfast', onTaps: (){}),
                  SizedBox(width: 10),
                  menuBars(doText: 'Snacks', onTaps: (){}),
                  SizedBox(width: 10),
                  menuBars(doText: 'Desert', onTaps: (){}),



                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular dishes",style: TextStyle(fontWeight: FontWeight
                    .w700),),
                Text('See all',style: TextStyle(fontWeight: FontWeight.w800,
                    color:Theme.of(context).colorScheme.inversePrimary),)
              ],
            ),
            SizedBox(height: 10),
            Expanded(child: ListView.builder(
              itemCount:getsProduct.podlist.length,
                itemBuilder: (context,index){
                Map<String,dynamic> listid=getsProduct.podlist[index];
             return Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.white,
                   boxShadow: [
                     BoxShadow(
                         color:Colors.grey,
                         blurRadius: 3,
                         spreadRadius: 1
                     )
                   ],
                   borderRadius: BorderRadius.circular(20)

                 ),

                 child: ListTile(
                   onTap: (){
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context)=>DetailsDishes
                           (itemIndex: index)));
                   },
                   title:Text(listid['proname'],style: TextStyle(
                     fontWeight: FontWeight.w600,
                     fontSize: 15
                   ),) ,
                   trailing:Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Image.asset(listid['proimage']),
                   ),
                 ),
               ),
             );
            })),







          ],
        ),
      ),
    );
  }

  Widget menuBars({required String doText,required Function() onTaps}){
    return OutlinedButton(onPressed: onTaps, child: Text(doText),
      style:OutlinedButton.styleFrom(
        side: BorderSide(
          color: Colors.grey
        )

      ) ,);
  }


}
