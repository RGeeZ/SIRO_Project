import 'package:flutter/material.dart';
import 'filter.dart';
import 'sortby.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var d = ['PGs', 'Residential', 'Commercial', 'Rooms'];
  var img = [
    'images/pexels-max-vakhtbovych-6523285.jpg',
    'images/pexels-pixabay-37347.jpg',
    'images/pexels-pixabay-267507.jpg',
    'images/pexels-tirachard-kumtanom-347141.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
              color: Colors.blue[900],
              child: Column(children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Expanded(
                  //height: 750,
                  // child: Padding(
                  //   padding: EdgeInsets.fromLTRB(5, 0, 10, 10),
                  child: Column(
                    children: <Widget>[
                      /*Container(
                        margin: EdgeInsets.fromLTRB(15,20,20,10),
                        alignment:Alignment.centerLeft,
                        child: Text('Search Here',style:TextStyle( fontFamily: 'Recursive',fontWeight: FontWeight.w800,fontSize: 35,color: Colors.white,shadows: [Shadow(offset: Offset(0,10),blurRadius: 10)]),textAlign: TextAlign.left,),
                      ),*/
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                        child: Container(
                          // margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 60,
                          //color: Colors.white,
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
                              SizedBox(width: 20),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.all(0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Search',
                                      hintStyle: TextStyle(
                                        color: Colors.grey.withOpacity(0.5),
                                        fontSize: 20,
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
                      Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                          child: Container(
                            // height: 80,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: Container(
                                  height: 60,
                                  child: RaisedButton(
                                    elevation: 6,
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context){return SortBy();}));
                                    },
                                    child: Text(
                                      "Sort By",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Recursive',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    color: Colors.grey[100],
                                    textColor: Colors.black54,
                                  ),
                                )),
                                Expanded(
                                    child: Container(
                                  height: 60,
                                  child: RaisedButton(
                                    elevation: 6,
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context){return Filter();}));
                                    },
                                    child: Text(
                                      "Filter",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Recursive',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    color: Colors.grey[100],
                                    textColor: Colors.black54,
                                  ),
                                )),
                              ],
                            ),
                          )
                          ),
                      Expanded(
                        // child: SingleChildScrollView(
                        child: SingleChildScrollView(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 250, 250, 1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                )),

                            //  child: SingleChildScrollView(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                              child: Column(children: <Widget>[
                                Container(
                                  height: 20,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 15, 8, 0),
                                  child: Container(
                                    height: 42,
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                            child: Text(
                                          'PGs',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 25,
                                              fontFamily: 'Recursive',
                                              fontWeight: FontWeight.bold),
                                          //textScaleFactor: 2,
                                        )),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8, 8, 10, 8),
                                          child: GestureDetector(
                                            onTap: () {
                                              print('hi');
                                            },
                                            child: Container(
                                              width: 110,
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(5, 0, 0, 0),
                                                    child: Text(
                                                      'View More',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .green[900],
                                                          fontSize: 15,
                                                          fontFamily: 'Recursive',
                                                          fontWeight:
                                                              FontWeight.bold),

                                                      // textScaleFactor: 1,
                                                      textAlign:
                                                          TextAlign.right,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .arrow_forward_ios_sharp,
                                                    color: Colors.green[800],
                                                  ),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.green[200],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 350,
                                  color: Color.fromRGBO(255, 250, 250, 1),
                                  /*decoration: BoxDecoration(
                                                color: Colors.grey[200],
                                                borderRadius: BorderRadius.circular(20),
                                                boxShadow: [BoxShadow()]),*/
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: d.length,

                                    itemBuilder: (BuildContext, int index) {
                                      return Container(
                                        // color: Colors.lightBlue,

                                        width: MediaQuery.of(context).size.width/1.1,
                                        //height: 500,
                                        margin:
                                            EdgeInsets.fromLTRB(10, 2, 20, 20),
                                        decoration: BoxDecoration(
                                          color:  Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          /*boxShadow: [
                                              BoxShadow(
                                                offset: Offset(0, 10),
                                                blurRadius: 10,
                                              )
                                            ]*/
                                        ),
                                        child: Column(
                                          children: <Widget>[
                                            GestureDetector(
                                              onTap:(){},
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                //color: Colors.yellowAccent,
                                                height: 220,
                                                decoration: BoxDecoration(
                                                    image: new DecorationImage(
                                                      fit: BoxFit.cover,

                                                      // colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.6),BlendMode.dstATop),
                                                      image: new AssetImage(
                                                          img[index]),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(10),
                                                    /*boxShadow: [
                                                      BoxShadow(
                                                        offset: Offset(0, 10),
                                                        blurRadius: 10,
                                                      )
                                                    ]*/),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Container(
                                                height: 30,
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  'HI Some Text',
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 15, 8, 0),
                                  child: Container(
                                    height: 42,
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                            child: Text(
                                          'Apratements',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 25,
                                              fontFamily: 'Recursive',
                                              fontWeight: FontWeight.bold),
                                          //textScaleFactor: 2,
                                        )),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8, 8, 10, 8),
                                          child: GestureDetector(
                                            onTap: () {
                                              print('hi');
                                            },
                                            child: Container(
                                              width: 110,
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(5, 0, 0, 0),
                                                    child: Text(
                                                      'View More',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .green[900],
                                                          fontSize: 15,
                                                          fontFamily: 'Recursive',
                                                          fontWeight:
                                                              FontWeight.bold),

                                                      // textScaleFactor: 1,
                                                      textAlign:
                                                          TextAlign.right,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .arrow_forward_ios_sharp,
                                                    color: Colors.green[800],
                                                  ),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.green[200],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 300,
                                  color: Colors.white,
                                  /*decoration: BoxDecoration(
                                                color: Colors.grey[200],
                                                borderRadius: BorderRadius.circular(20),
                                                boxShadow: [BoxShadow()]),*/
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: d.length,
                                    itemBuilder: (BuildContext, int index) {
                                      return Container(
                                        // color: Colors.lightBlue,
                                        width: 200,
                                        //height: 500,
                                        margin:
                                            EdgeInsets.fromLTRB(10, 0, 20, 20),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                offset: Offset(0, 10),
                                                blurRadius: 10,
                                              )
                                            ]),
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              //color: Colors.yellowAccent,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                  //         color: Colors.yellowAccent,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  boxShadow: [BoxShadow()]),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 15, 8, 0),
                                  child: Container(
                                    height: 42,
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                            child: Text(
                                          'House',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 25,
                                              fontFamily: 'Recursive',
                                              fontWeight: FontWeight.bold),
                                          //textScaleFactor: 2,
                                        )),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8, 8, 10, 8),
                                          child: GestureDetector(
                                            onTap: () {
                                              print('hi');
                                            },
                                            child: Container(
                                              width: 110,
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(5, 0, 0, 0),
                                                    child: Text(
                                                      'View More',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .green[900],
                                                          fontSize: 15,
                                                          fontFamily: 'Recursive',
                                                          fontWeight:
                                                              FontWeight.bold),

                                                      // textScaleFactor: 1,
                                                      textAlign:
                                                          TextAlign.right,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .arrow_forward_ios_sharp,
                                                    color: Colors.green[800],
                                                  ),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.green[200],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 300,
                                  color: Colors.white,
                                  /*decoration: BoxDecoration(
                                                color: Colors.grey[200],
                                                borderRadius: BorderRadius.circular(20),
                                                boxShadow: [BoxShadow()]),*/
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: d.length,
                                    itemBuilder: (BuildContext, int index) {
                                      return Container(
                                        // color: Colors.lightBlue,
                                        width: 200,
                                        //height: 500,
                                        margin:
                                            EdgeInsets.fromLTRB(10, 0, 20, 20),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                offset: Offset(0, 10),
                                                blurRadius: 10,
                                              )
                                            ]),
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              //color: Colors.yellowAccent,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                  //         color: Colors.yellowAccent,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  boxShadow: [BoxShadow()]),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 15, 8, 0),
                                  child: Container(
                                    height: 42,
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                            child: Text(
                                          'PGs',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 25,
                                              fontFamily: 'Recursive',
                                              fontWeight: FontWeight.bold),
                                          //textScaleFactor: 2,
                                        )),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8, 8, 10, 8),
                                          child: GestureDetector(
                                            onTap: () {
                                              print('hi');
                                            },
                                            child: Container(
                                              width: 110,
                                              height: 20,
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(5, 0, 0, 0),
                                                    child: Text(
                                                      'View More',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .green[900],
                                                          fontSize: 15,
                                                          fontFamily: 'Recursive',
                                                          fontWeight:
                                                              FontWeight.bold),

                                                      // textScaleFactor: 1,
                                                      textAlign:
                                                          TextAlign.right,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .arrow_forward_ios_sharp,
                                                    color: Colors.green[800],
                                                  ),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.green[200],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 300,
                                  color: Colors.white,
                                  /*decoration: BoxDecoration(
                                                color: Colors.grey[200],
                                                borderRadius: BorderRadius.circular(20),
                                                boxShadow: [BoxShadow()]),*/
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: d.length,
                                    itemBuilder: (BuildContext, int index) {
                                      return Container(
                                        // color: Colors.lightBlue,
                                        width: 200,
                                        //height: 500,
                                        margin:
                                            EdgeInsets.fromLTRB(10, 0, 20, 20),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                offset: Offset(0, 10),
                                                blurRadius: 10,
                                              )
                                            ]),
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              //color: Colors.yellowAccent,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                  //         color: Colors.yellowAccent,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  boxShadow: [BoxShadow()]),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 15, 8, 0),
                                  child: Container(
                                    height: 42,
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                            child: Text(
                                          'PGs',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 25,
                                              fontFamily: 'Recursive',
                                              fontWeight: FontWeight.bold),
                                          //textScaleFactor: 2,
                                        )),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8, 8, 10, 8),
                                          child: GestureDetector(
                                            onTap: () {
                                              print('hi');
                                            },
                                            child: Container(
                                              width: 110,
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(5, 0, 0, 0),
                                                    child: Text(
                                                      'View More',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .green[900],
                                                          fontSize: 15,
                                                          fontFamily: 'Recursive',
                                                          fontWeight:
                                                              FontWeight.bold),

                                                      // textScaleFactor: 1,
                                                      textAlign:
                                                          TextAlign.right,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .arrow_forward_ios_sharp,
                                                    color: Colors.green[800],
                                                  ),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.green[200],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 290,
                                  color: Colors.white,
                                  /*decoration: BoxDecoration(
                                                color: Colors.grey[200],
                                                borderRadius: BorderRadius.circular(20),
                                                boxShadow: [BoxShadow()]),*/
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: d.length,
                                    itemBuilder: (BuildContext, int index) {
                                      return Container(
                                        // color: Colors.lightBlue,
                                        width: 200,
                                        //height: 500,
                                        margin:
                                            EdgeInsets.fromLTRB(10, 0, 20, 20),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                offset: Offset(0, 10),
                                                blurRadius: 10,
                                              )
                                            ]),
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              //color: Colors.yellowAccent,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                  //         color: Colors.yellowAccent,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  boxShadow: [BoxShadow()]),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  //),
                ),
              ]))),
    );
  }
}
