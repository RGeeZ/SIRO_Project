import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'profile.dart';
import 'dart:io';
import 'dart:async';
import 'postad.dart';

class Contain extends StatefulWidget {
  @override
  _ContainState createState() => _ContainState();
}

class _ContainState extends State<Contain> {
  var d = ['PGs', 'Residential', 'Commercial', 'Rooms'];
  var img=[
        'images/pexels-max-vakhtbovych-6523285.jpg',
        'images/pexels-pixabay-37347.jpg',
        'images/pexels-pixabay-267507.jpg',
         'images/pexels-tirachard-kumtanom-347141.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity,),
      home: Scaffold(
        body: Container(
          color: Colors.blue[900],
          /*decoration: const BoxDecoration(

            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF0D47A1),
                Color(0xFF1976D2),
                Color(0xFF42A5F5),
                Color(0xFF42A5F5),
              ],
            ),
          ),*/
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(5, 10, 15, 0),
                  child: RaisedButton(
                    color: Colors.green,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){return AddImages();}));
                    },
                    child: Text('Post-Ad',style: TextStyle(color: Colors.grey[100]),),

                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 30),
                  child: Text(
                    'SIRO',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      fontFamily:'Recursive',
                      shadows: [
                        Shadow(
                          blurRadius: 10,
                          offset: Offset(0, 10),
                        )
                      ],
                    ),
                    textScaleFactor: 1.5,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                child: Container(
                  // margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 54,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 10,
                        ),
                      ]),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10,10,10,5),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color: Colors.grey.withOpacity(0.5),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Recursive',
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.search_outlined),
                        onPressed: () {},
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // child: SingleChildScrollView(
              Container(
               // height: 1550,
                height: 2000,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 250, 250, 1),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )),

                //  child: SingleChildScrollView(
              //  child: Padding(
                   // padding: EdgeInsets.all(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Container(height: 20,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15,15,15,0),
                            child: Container(
                                height: 30,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Quick Links',
                                  textScaleFactor: 1.5,
                                  style: TextStyle(fontFamily: 'Recursive'),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,10,0,10),
                            child: Container(
                              height: 150,
                             color: Colors.white,
                              /*decoration: BoxDecoration(
                               //   color: Colors.white,
                                 // borderRadius: BorderRadius.circular(20),

                                  boxShadow: [BoxShadow()]),*/
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: d.length,
                                itemBuilder: (BuildContext, int index) {
                                  return Container(
                                    // color: Colors.lightBlue,
                                    width: 150,
                                    height: 300,
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      //  color: Colors.lightBlue,
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border(
                                          top: BorderSide.none,
                                          //bottom:,
                                        ),
                                        boxShadow: [BoxShadow()]),
                                    //alignment: Alignment.bottomCenter,

                                    child: Stack(

                                      alignment: Alignment.bottomLeft,
                                      children: <Widget>[
                                         InkWell(
                                           onTap:(){
                                             print('hi');
                                           },
                                           child: Container(
                                              decoration:BoxDecoration(

                                      image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.6),BlendMode.dstATop),
                                      image: new AssetImage(img[index]),
                                    ),

                                                borderRadius:BorderRadius.circular(15),
                                              ),

                                             /*child: ClipRRect(
                                               borderRadius:BorderRadius.circular(20),

                                                 child:Image(

                                                  image: AssetImage(
                                                      img[index]),
                                                  height: 200,

                                                  fit: BoxFit.cover,

                                                ),),*/
                                           ),
                                         ),

                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            d[index],
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Recursive',

                                            ),
                                            textScaleFactor: 1.5,
                                            textAlign: TextAlign.end,
                                          ),
                                        ),
                                      ],
                                    ),


                                  );
                                },
                              ),
                            ),
                          ),
                        //  Container(height: 30),
                          GestureDetector(
                            onTap: () {
                              print('ji');
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Container(
                                // color: Colors.lightBlue,
                                height: 300,
                                //width: 150,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [BoxShadow()]),
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      //color: Colors.yellowAccent,
                                      height: 150,
                                      decoration: BoxDecoration(
                                 //         color: Colors.yellowAccent,
                                          borderRadius: BorderRadius.circular(20),
                                          boxShadow: [BoxShadow()]),
                                      child: Image(
                                        image: AssetImage('images/pexels-cats-coming-707581.jpg'),
                                        width:  MediaQuery.of(context).size.width*3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        //  Container(height: 30),
                          GestureDetector(
                            onTap: () {
                              print('ji');
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Container(
                                // color: Colors.lightBlue,
                                height: 300,
                                width: MediaQuery.of(context).size.width*0.9,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [BoxShadow()]),
                                child: Stack(

                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0,5,5,0),
                                      child: Container(
                                        //color: Colors.yellowAccent,
                                        height: 150,
                                      width: 150,
                                      //  alignment: Alignment.centerRight,
                                        decoration: BoxDecoration(
                                            color: Colors.yellowAccent,
                                            image: new DecorationImage(image:new AssetImage('images/pexels-cats-coming-707581.jpg'),fit: BoxFit.cover),
                                            borderRadius: BorderRadius.circular(150),
                                            boxShadow: [BoxShadow()]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          //Container(height: 30),
                          GestureDetector(
                            onTap: (){
                              print('ji');
                            },
                            child: Container(
                              color: Colors.red,
                              height: 100,
                              child: Image(image:new AssetImage('verification.jpg'),/*fit: BoxFit.cover,*/),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('ji');
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Container(
                                // color: Colors.lightBlue,
                                height: 300,
                                //width: 150,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [BoxShadow()]),
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      //color: Colors.yellowAccent,
                                      height: 150,
                                      decoration: BoxDecoration(
                                          color: Colors.yellowAccent,
                                          borderRadius: BorderRadius.circular(20),
                                          boxShadow: [BoxShadow()]),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(height: 50),
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [BoxShadow()]),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: d.length,
                              itemBuilder: (BuildContext, int index) {
                                return Container(
                                  // color: Colors.lightBlue,
                                  width: 150,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlue,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [BoxShadow()]),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )//),
                //),
              ),


              //),
            ],
          ),
          //),
        ),
      ),
    );

  }
}
