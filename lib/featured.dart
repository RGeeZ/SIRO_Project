import 'package:flutter/material.dart';
import'dart:io';
class Featured extends StatefulWidget {
  @override
  _FeaturedState createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        body: Container(

          child:ListView(

            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20,10,10,10),
                child: Container(height: 50,
                  child:Text('Our Services :',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w800,fontFamily: 'Recursive',color: Colors.white,shadows: [
                    Shadow(
                      blurRadius: 10,
                      offset: Offset(0, 10),
                    )
                  ],),),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        offset: Offset(0,5),
                        blurRadius: 8,
                      )]
                  ),
                  child: ListTile(

                    leading:  Icon(Icons.payment_rounded),
                    title: Text('Pay Rent',style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Recursive',
                    ),),
                    onTap: (){},
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(
                      offset: Offset(0,5),
                      blurRadius: 8,
                    )]
                ),
                  child: ListTile(

                    leading: Icon(Icons.delete_sweep_sharp),
                    title: Text('Home Services',style: TextStyle(
                         fontSize: 20,
                         color: Colors.grey,
                         fontWeight: FontWeight.w600,
                      fontFamily: 'Recursive',
                    ),),
                    onTap: (){},
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        offset: Offset(0,5),
                        blurRadius: 8,
                      )]
                  ),
                  child: ListTile(

                  leading:  Icon(Icons.text_snippet_outlined),//Image(image: AssetImage('payrent.jpg'),),
                    title: Text('Rent Agreement',style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontFamily: 'Recursive',
                      fontWeight: FontWeight.w600,
                    ),),
                    onTap: (){},
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        offset: Offset(0,5),
                        blurRadius: 8,
                      )]
                  ),
                  child: ListTile(

                    leading:  Icon(Icons.person),
                    title: Text('Verification',style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Recursive',
                    ),),
                    onTap: (){},
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        offset: Offset(0,5),
                        blurRadius: 8,
                      )]
                  ),
                  child: ListTile(

                   leading: Icon(Icons.food_bank),
                    title: Text('Food Services',style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Recursive',
                    ),),
                    onTap: (){},
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        offset: Offset(0,5),
                        blurRadius: 8,
                      )]
                  ),
                  child: ListTile(

                    leading:  Icon(Icons.pan_tool),
                    title: Text('Essentials',style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Recursive',
                    ),),
                    onTap: (){},
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        offset: Offset(0,5),
                        blurRadius: 8,
                      )]
                  ),
                  child: ListTile(

                    leading:  Icon(Icons.video_label_outlined),
                    title: Text('Rent Furniture',style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Recursive',
                    ),),
                    onTap: (){},
                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                  ),
                ),
              ),
            ],
          ) ,
        ),
      ),
    );
  }
}
