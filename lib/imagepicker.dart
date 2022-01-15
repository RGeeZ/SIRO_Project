import 'package:flutter/material.dart';
import'home.dart';
import 'pricing.dart';
class ImagePicker extends StatefulWidget {
  @override
  _ImagePickerState createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  bool listcheckboxvalue1=false;
  bool listcheckboxvalue2=false;
  bool listcheckboxvalue3=false;
  bool listcheckboxvalue4=false;
  bool listcheckboxvalue5=false;
  bool listcheckboxvalue6=false;
  bool listcheckboxvalue7=false;
  bool listcheckboxvalue8=false;
  bool listcheckboxvalue9=false;
  bool listcheckboxvalue10=false;
  bool listcheckboxvalue11=false;
  bool listcheckboxvalue12=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: ListView(
            children: [
              Container(height: 100,),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,0,20,0),
                child: Divider(color: Colors.blue[800],thickness: 2,),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,20,0,20),
                      child: Text('Amenities',style: TextStyle(color: Colors.blue[600],fontFamily: 'Recursive',fontWeight: FontWeight.w800,fontSize: 30),),
                    ),
                    Table(
                      children: [
                        TableRow(children: <Widget>[
                          ListTile(
                            leading: Checkbox(
                              value: listcheckboxvalue1,
                              onChanged: (value1) {
                                setState(() {
                                  listcheckboxvalue2 = value1;
                                });
                              },
                            ),
                            title: Text(
                              'Pets friendly',
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
                              'Children friendly',
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
                              'WFH Setup',
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
                              'Power Backup',
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
                              'Park',
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
                              'Gym',
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
                              'Near by School',
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
                              'Parking',
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
                              'Near by Market',
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
                              'Power Backup',
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
                              'Club',
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
                              'Lift',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Recursive'),
                            ),
                          ),
                        ]),
                      ],
                    )

                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                child: Container(
                  //width: 50,
                  alignment: Alignment.bottomRight,
                  child: RaisedButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context){return Pricing();}));
                  },
                  color: Colors.blue[800],
                    child: Text('Next',style: TextStyle(color: Colors.white),),
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
