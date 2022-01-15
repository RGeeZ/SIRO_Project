import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'filter.dart';

/*void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Pricing(),
      ),
    );
  }
}*/

class Pricing extends StatefulWidget {
  @override
  _PricingState createState() => _PricingState();
}

class _PricingState extends State<Pricing> {
  final formkey1=GlobalKey<FormState>();
  bool checkboxvalue1 = false;
  bool checkboxvalue2 = false;
  bool checkboxvalue3 = false;
  var builduparea = [
    'select',
    'sq-ft',
    'sq-yd',
    'sq-m',
  ];
  String unit = 'select';
  Color changeColorbox1 = Colors.white;
  Color changeColorbox2 = Colors.white;
  Color changeColorbox3 = Colors.white;
  bool colorbox1 = false;
  bool colorbox2 = false;
  bool colorbox3 = false;
  bool listcheckboxvalue1 = false;
  bool listcheckboxvalue2 = false;
  bool listcheckboxvalue3 = false;
  bool listcheckboxvalue4 = false;
  bool listcheckboxvalue5 = false;
  bool listcheckboxvalue6 = false;
  bool listcheckboxvalue7 = false;
  bool listcheckboxvalue8 = false;
  bool listcheckboxvalue9 = false;
  bool listcheckboxvalue10 = false;
  bool listcheckboxvalue11 = false;
  bool listcheckboxvalue12 = false;
  bool listcheckboxvalue13 = false;
  bool listcheckboxvalue14 = false;
  var lightvalue = 0;
  var fanvalue = 0;
  var acvalue = 0;
  var bedvalue = 0;
  var wadrobevalue = 0;
  var tablevalue = 0;
  final RegExp rent=new RegExp(r"^[0-9]");
  final formkey2=GlobalKey<FormState>();
  // var lightStringvalue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        unselectedWidgetColor: Colors.green[400],
      ),
      home: Scaffold(
        body: Container(
          color: Colors.blue[900],
          child: ListView(
            children: [
              Container(
                height: 30,
              ),
              Container(
                child: Column(children: <Widget>[
                  Text(
                    'Pricing:',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Recursive',
                        fontWeight: FontWeight.w500),
                    textScaleFactor: 2.2,
                    textAlign: TextAlign.left,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 30, 20, 20),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Form(
                          key:formkey1,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                labelText: 'Rent(Required)',
                                labelStyle: TextStyle(
                                  color: Colors.black54,
                                ),
                                focusColor: Colors.deepOrangeAccent,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                            validator: (value){
                              if(!rent.hasMatch(value)){
                                return 'Fill this field correctly';
                              }
                              return null;
                            },
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          //________________________________________________CHECKBOX LIST________________________________________________________//
                          ListTile(
                            leading: Checkbox(
                              value: checkboxvalue1,
                              onChanged: (value1) {
                                setState(() {
                                  checkboxvalue1 = value1;
                                });
                              },
                            ),
                            title: Text(
                              'Price negotiable',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Recursive'),
                            ),
                          ),
                          ListTile(
                            leading: Checkbox(
                              value: checkboxvalue2,
                              onChanged: (value2) {
                                setState(() {
                                  checkboxvalue2 = value2;
                                });
                              },
                              checkColor: Colors.white,
                            ),
                            title: Text(
                                'Excluded Electricity and water charges',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Recursive')),
                          ),
                          ListTile(
                            leading: Checkbox(
                              value: checkboxvalue3,
                              onChanged: (value2) {
                                setState(() {
                                  checkboxvalue3 = value2;
                                });
                              },
                              checkColor: Colors.white,
                            ),
                            title: Text('Maintainance/ Other charges included',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Recursive')),
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Divider(
                  thickness: 2,
                  color: Colors.green[400],
                ),
              ),
              //________________________________________________OTHER-DETAILS_________________________________________________________//
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 15, 10, 20),
                      child: Text(
                        'Other-details',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Recursive',
                            fontWeight: FontWeight.w500),
                        textScaleFactor: 2.2,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    //________________________________________________CARPET-AREA_________________________________________________________//
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        alignment: Alignment.center,
                        // width: MediaQuery.of(context).size.width,
                        height: 55,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                alignment: Alignment.center,
                                child: Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(8, 0, 0, 10),
                                  child: Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      alignment: Alignment.center,
                                      child: TextField(
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          labelText: 'CarpetArea(Optional)',
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          labelStyle: TextStyle(
                                            color: Colors.black54,
                                          ),
                                        ),
                                      )),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20))),
                              ),
                            ),
                            VerticalDivider(
                              width: 2,
                            ),
                            Container(
                              width: 79,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: DropdownButton(
                                  itemHeight: 55,
                                  items: builduparea.map((String value) {
                                    return DropdownMenuItem<String>(
                                        value: value, child: Text(value));
                                  }).toList(),
                                  onChanged: (currentunit) {
                                    setState(() {
                                      this.unit = currentunit;
                                    });
                                  },
                                  value: unit,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 15,
                    ),
                    //________________________________________________BUILDUP-AREA_________________________________________________________//
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                alignment: Alignment.center,
                                child: Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(8, 0, 0, 10),
                                  child: Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      alignment: Alignment.center,
                                      child: TextField(
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          labelText: 'BuildupArea(Optional)',
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          labelStyle: TextStyle(
                                            color: Colors.black54,
                                          ),
                                        ),
                                      )),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20))),
                              ),
                            ),
                            VerticalDivider(
                              width: 2,
                            ),
                            Container(
                              width: 79,
                              // height: 50,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: DropdownButton(
                                  itemHeight: 55,
                                  items: builduparea.map(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    },
                                  ).toList(),
                                  onChanged: (String currentunit) {
                                    setState(() {
                                      this.unit = currentunit;
                                    });
                                  },
                                  value: unit,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: Text(
                        'Your Property is:',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Table(
                      children: [
                        TableRow(children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              child: Container(
                                // width: 20,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: changeColorbox1),
                                alignment: Alignment.center,
                                child: Text(
                                  'Furnished',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  changeColorbox1 = Colors.green[400];
                                  colorbox1 = true;
                                });
                              },
                              onDoubleTap: () {
                                setState(() {
                                  changeColorbox1 = Colors.white;
                                  colorbox1 = false;
                                });
                              },
                            ),
                          ),
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                //  width: 80,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: changeColorbox2,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Semi-Furnished',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                changeColorbox2 = Colors.green[600];
                                colorbox1 = true;
                              });
                            },
                            onDoubleTap: () {
                              setState(() {
                                changeColorbox2 = Colors.white;
                                colorbox1 = false;
                              });
                            },
                          ),
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                //  width: 60,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: changeColorbox3),
                                alignment: Alignment.center,
                                child: Text(
                                  'Un-Furnished',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                changeColorbox3 = Colors.green;
                                colorbox3=true;
                              });
                            },
                            onDoubleTap: () {
                              setState(() {
                                changeColorbox3 = Colors.white;
                                colorbox3=false;
                              });
                            },
                          ),
                        ])
                      ],
                    ),
                    //________________________________________________FURNISHED/SEMIFURNISHED ITEMS_________________________________________________________//
                    Visibility(
                      visible: colorbox1,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Container(
                          height: 580,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Table(
                            //________________________________________________CHECKBOX ITEMS________________________________________________________//
                            children: [
                              TableRow(children: <Widget>[
                                ListTile(
                                  leading: Checkbox(
                                    value: listcheckboxvalue1,
                                    onChanged: (value1) {
                                      setState(() {
                                        listcheckboxvalue1 = value1;
                                      });
                                    },
                                  ),
                                  title: Text(
                                    'Sofa',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Recursive'),
                                  ),
                                ),
                                ListTile(
                                  leading: Checkbox(
                                    value: listcheckboxvalue2,
                                    onChanged: (value1) {
                                      setState(() {
                                        listcheckboxvalue2 = value1;
                                      });
                                    },
                                  ),
                                  title: Text(
                                    'Gyser',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Recursive'),
                                  ),
                                ),
                              ]),
                              TableRow(children: <Widget>[
                                ListTile(
                                  leading: Checkbox(
                                    value: listcheckboxvalue3,
                                    onChanged: (value1) {
                                      setState(() {
                                        listcheckboxvalue3 = value1;
                                      });
                                    },
                                  ),
                                  title: Text(
                                    'Stove',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Recursive'),
                                  ),
                                ),
                                ListTile(
                                  leading: Checkbox(
                                    value: listcheckboxvalue4,
                                    onChanged: (value1) {
                                      setState(() {
                                        listcheckboxvalue4 = value1;
                                      });
                                    },
                                  ),
                                  title: Text(
                                    'Fridge',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Recursive'),
                                  ),
                                ),
                              ]),
                              TableRow(children: <Widget>[
                                ListTile(
                                  leading: Checkbox(
                                    value: listcheckboxvalue5,
                                    onChanged: (value1) {
                                      setState(() {
                                        listcheckboxvalue5 = value1;
                                      });
                                    },
                                  ),
                                  title: Text(
                                    'Water Purifier',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Recursive'),
                                  ),
                                ),
                                ListTile(
                                  leading: Checkbox(
                                    value: listcheckboxvalue6,
                                    onChanged: (value1) {
                                      setState(() {
                                        listcheckboxvalue6 = value1;
                                      });
                                    },
                                  ),
                                  title: Text(
                                    'Microwave',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Recursive'),
                                  ),
                                ),
                              ]),
                              TableRow(children: <Widget>[
                                ListTile(
                                  leading: Checkbox(
                                    value: listcheckboxvalue7,
                                    onChanged: (value1) {
                                      setState(() {
                                        listcheckboxvalue7 = value1;
                                      });
                                    },
                                  ),
                                  title: Text(
                                    'Chimney',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Recursive'),
                                  ),
                                ),
                                ListTile(
                                  leading: Checkbox(
                                    value: listcheckboxvalue8,
                                    onChanged: (value1) {
                                      setState(() {
                                        listcheckboxvalue8 = value1;
                                      });
                                    },
                                  ),
                                  title: Text(
                                    'Exhaust Fan',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Recursive'),
                                  ),
                                ),
                              ]),
                              TableRow(children: <Widget>[
                                ListTile(
                                  leading: Checkbox(
                                    value: listcheckboxvalue9,
                                    onChanged: (value1) {
                                      setState(() {
                                        listcheckboxvalue9 = value1;
                                      });
                                    },
                                  ),
                                  title: Text(
                                    'Dining Table',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Recursive'),
                                  ),
                                ),
                                ListTile(
                                  leading: Checkbox(
                                    value: listcheckboxvalue10,
                                    onChanged: (value1) {
                                      setState(() {
                                        listcheckboxvalue10 = value1;
                                      });
                                    },
                                  ),
                                  title: Text(
                                    'Curtains',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Recursive'),
                                  ),
                                ),
                              ]),
                              TableRow(children: <Widget>[
                                ListTile(
                                  leading: Checkbox(
                                    value: listcheckboxvalue11,
                                    onChanged: (value1) {
                                      setState(() {
                                        listcheckboxvalue11 = value1;
                                      });
                                    },
                                  ),
                                  title: Text(
                                    'Washing Machine',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Recursive'),
                                  ),
                                ),
                                ListTile(
                                  leading: Checkbox(
                                    value: listcheckboxvalue12,
                                    onChanged: (value1) {
                                      setState(() {
                                        listcheckboxvalue12 = value1;
                                      });
                                    },
                                  ),
                                  title: Text(
                                    'TV',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Recursive'),
                                  ),
                                ),
                              ]),
                              TableRow(children: <Widget>[
                                ListTile(
                                  leading: Checkbox(
                                    value: listcheckboxvalue13,
                                    onChanged: (value1) {
                                      setState(() {
                                        listcheckboxvalue13 = value1;
                                      });
                                    },
                                  ),
                                  title: Text(
                                    'Food',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Recursive'),
                                  ),
                                ),
                                ListTile(
                                  leading: Checkbox(
                                    value: listcheckboxvalue14,
                                    onChanged: (value1) {
                                      setState(() {
                                        listcheckboxvalue14 = value1;
                                      });
                                    },
                                  ),
                                  title: Text(
                                    'WIFI',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Recursive'),
                                  ),
                                ),
                              ]),
                              //________________________________________________INCREMENT/DECREMENT ITEMS_________________________________________________________//
                              TableRow(children: <Widget>[
                                Container(
                                  height: 50,
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 0, 15, 0),
                                        child: Text(
                                          'Light',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 16),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          child: Icon(
                                            Icons.exposure_minus_1_sharp,
                                            color: Colors.black54,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Colors.grey[300],
                                              border: Border.all(
                                                  color: Colors.blueGrey)),
                                        ),
                                        onTap: () {
                                          lightDecrease();
                                        },
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            5, 0, 5, 0),
                                        child: Container(
                                          width: 40,
                                          height: 30,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Colors.grey[300],
                                              border: Border.all(
                                                  color: Colors.blueGrey)),
                                          child: Text('$lightvalue',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontFamily: 'Recursive',
                                                  fontSize: 16)),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          child: Icon(
                                            Icons.plus_one_sharp,
                                            color: Colors.black54,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Colors.grey[300],
                                              border: Border.all(
                                                  color: Colors.blueGrey)),
                                        ),
                                        onTap: () {
                                          lightIncrease();
                                        },
                                      ),
                                    ],
                                  ),
                                  color: Colors.white,
                                ),
                                Container(
                                  height: 50,
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 0, 15, 0),
                                        child: Text(
                                          'Fan',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 16),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          child: Icon(
                                            Icons.exposure_minus_1_sharp,
                                            color: Colors.black54,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Colors.grey[300],
                                              border: Border.all(
                                                  color: Colors.blueGrey)),
                                        ),
                                        onTap: () {
                                          fanDecrease();
                                        },
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            5, 0, 5, 0),
                                        child: Container(
                                          width: 40,
                                          height: 30,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Colors.grey[300],
                                              border: Border.all(
                                                  color: Colors.blueGrey)),
                                          child: Text('$fanvalue',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontFamily: 'Recursive',
                                                  fontSize: 16)),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          child: Icon(
                                            Icons.plus_one_sharp,
                                            color: Colors.black54,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Colors.grey[300],
                                              border: Border.all(
                                                  color: Colors.blueGrey)),
                                        ),
                                        onTap: () {
                                          fanIncrease();
                                        },
                                      ),
                                    ],
                                  ),
                                  color: Colors.white,
                                ),
                              ]),
                              TableRow(children: <Widget>[
                                Container(
                                  height: 50,
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 0, 33, 0),
                                        child: Text(
                                          'Ac',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 16),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          child: Icon(
                                            Icons.exposure_minus_1_sharp,
                                            color: Colors.black54,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Colors.grey[300],
                                              border: Border.all(
                                                  color: Colors.blueGrey)),
                                        ),
                                        onTap: () {
                                          acDecrease();
                                        },
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            5, 0, 5, 0),
                                        child: Container(
                                          width: 40,
                                          height: 30,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Colors.grey[300],
                                              border: Border.all(
                                                  color: Colors.blueGrey)),
                                          child: Text('$acvalue',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontFamily: 'Recursive',
                                                  fontSize: 16)),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          child: Icon(
                                            Icons.plus_one_sharp,
                                            color: Colors.black54,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Colors.grey[300],
                                              border: Border.all(
                                                  color: Colors.blueGrey)),
                                        ),
                                        onTap: () {
                                          acIncrease();
                                        },
                                      ),
                                    ],
                                  ),
                                  color: Colors.white,
                                ),
                                Container(
                                  height: 50,
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 0, 15, 0),
                                        child: Text(
                                          'bed',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 16),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          child: Icon(
                                            Icons.exposure_minus_1_sharp,
                                            color: Colors.black54,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Colors.grey[300],
                                              border: Border.all(
                                                  color: Colors.blueGrey)),
                                        ),
                                        onTap: () {
                                          bedDecrease();
                                        },
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            5, 0, 5, 0),
                                        child: Container(
                                          width: 40,
                                          height: 30,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Colors.grey[300],
                                              border: Border.all(
                                                  color: Colors.blueGrey)),
                                          child: Text('$bedvalue',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontFamily: 'Recursive',
                                                  fontSize: 16)),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          child: Icon(
                                            Icons.plus_one_sharp,
                                            color: Colors.black54,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Colors.grey[300],
                                              border: Border.all(
                                                  color: Colors.blueGrey)),
                                        ),
                                        onTap: () {
                                          bedIncrease();
                                        },
                                      ),
                                    ],
                                  ),
                                  color: Colors.white,
                                ),
                              ]),
                              TableRow(children: <Widget>[
                                Container(
                                  height: 50,
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 0, 2, 0),
                                        child: Text(
                                          'Wadrobe',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 16),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          child: Icon(
                                            Icons.exposure_minus_1_sharp,
                                            color: Colors.black54,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Colors.grey[300],
                                              border: Border.all(
                                                  color: Colors.blueGrey)),
                                        ),
                                        onTap: () {
                                          wadrobeDecrease();
                                        },
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            5, 0, 5, 0),
                                        child: Container(
                                          width: 40,
                                          height: 30,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Colors.grey[300],
                                              border: Border.all(
                                                  color: Colors.blueGrey)),
                                          child: Text('$wadrobevalue',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontFamily: 'Recursive',
                                                  fontSize: 16)),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          child: Icon(
                                            Icons.plus_one_sharp,
                                            color: Colors.black54,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Colors.grey[300],
                                              border: Border.all(
                                                  color: Colors.blueGrey)),
                                        ),
                                        onTap: () {
                                          wadrobeIncrease();
                                        },
                                      ),
                                    ],
                                  ),
                                  color: Colors.white,
                                ),
                                Container(
                                  height: 50,
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 0, 5, 0),
                                        child: Text(
                                          'Table',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 16),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          child: Icon(
                                            Icons.exposure_minus_1_sharp,
                                            color: Colors.black54,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Colors.grey[300],
                                              border: Border.all(
                                                  color: Colors.blueGrey)),
                                        ),
                                        onTap: () {
                                          tableDecrease();
                                        },
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            5, 0, 5, 0),
                                        child: Container(
                                          width: 40,
                                          height: 30,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Colors.grey[300],
                                              border: Border.all(
                                                  color: Colors.blueGrey)),
                                          child: Text('$tablevalue',
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontFamily: 'Recursive',
                                                  fontSize: 16)),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          child: Icon(
                                            Icons.plus_one_sharp,
                                            color: Colors.black54,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: Colors.grey[300],
                                              border: Border.all(
                                                  color: Colors.blueGrey)),
                                        ),
                                        onTap: () {
                                          tableIncrease();
                                        },
                                      ),
                                    ],
                                  ),
                                  color: Colors.white,
                                ),
                              ]),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
                      child: Form(
                        key:formkey2,
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              maxLines: 5,
                              decoration: InputDecoration.collapsed(
                                  hintText: 'Describe Your Property',),
                              maxLength: 100,

                              maxLengthEnforced: true,
                              textAlign: TextAlign.justify,

                              validator: (value){
                                if(value.length<=10){
                                  return 'Discription is too small';
                                }
                                return null;
                              },
                            ),
                          ),

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Container(
                    height: 50,
                    child: RaisedButton(
                        onPressed: () {
                          if(formkey1.currentState.validate() || formkey2.currentState.validate()){
                            if(colorbox1==true || colorbox3==true){
                              Navigator.push(context,MaterialPageRoute(builder: (context){return null;}));

                            }else{
                              Alert(context);
                            }

                          }else{print('error');}
                        },
                        color: Colors.green,
                        child: Text(
                          'Done',
                          style: TextStyle(fontSize: 18, color: Colors.black54),
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void lightDecrease() {
    setState(() {
      lightvalue = lightvalue - 1;
    });
  }

  void lightIncrease() {
    setState(() {
      lightvalue = lightvalue + 1;
    });
  }

  void fanDecrease() {
    setState(() {
      fanvalue = fanvalue - 1;
    });
  }

  void fanIncrease() {
    setState(() {
      fanvalue = fanvalue + 1;
    });
  }

  void acDecrease() {
    setState(() {
      acvalue = acvalue - 1;
    });
  }

  void acIncrease() {
    setState(() {
      acvalue = acvalue + 1;
    });
  }

  void bedDecrease() {
    setState(() {
      bedvalue = bedvalue - 1;
    });
  }

  void bedIncrease() {
    setState(() {
      bedvalue = bedvalue + 1;
    });
  }

  void wadrobeDecrease() {
    setState(() {
      wadrobevalue = wadrobevalue - 1;
    });
  }

  void wadrobeIncrease() {
    setState(() {
      wadrobevalue = wadrobevalue + 1;
    });
  }

  void tableDecrease() {
    setState(() {
      tablevalue = tablevalue - 1;
    });
  }

  void tableIncrease() {
    setState(() {
      tablevalue = tablevalue + 1;
    });
  }
}
Alert(BuildContext context) {
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  AlertDialog alert = AlertDialog(
    content: Text('Fill Your Property Type Field'),
    actions: [okButton],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      }
  );
}