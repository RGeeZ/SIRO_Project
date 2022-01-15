import 'package:flutter/material.dart';
import 'Commercial_form_ad.dart';
import 'residential_from_ad.dart';
import 'mixed_form_ad.dart';
/*void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: AddImages(),
    );
  }
}*/

class StraightLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.green;
    var center1 = Offset(30, 30);
    paint.strokeWidth = 3;
    // var path=Path();
    canvas.drawCircle(center1, 10, paint);
    var center2 = Offset(30, 80);
    canvas.drawCircle(center2, 10, paint);
    var center3 = Offset(30, 130);
    canvas.drawCircle(center3, 10, paint);
    var p1 = Offset(30, 30);
    var p2 = Offset(30, 130);
    paint.style = PaintingStyle.stroke;
    canvas.drawLine(p1, p2, paint);
    //canvas.drawPath(path, paint)
    // paint.color = Colors.yellow;
    //path.lineTo(0.0, size.height);
    //path.lineTo(size.width, 0.0);
    // path.close();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}

class AddImages extends StatefulWidget {
  @override
  _AddImagesState createState() => _AddImagesState();
}

class _AddImagesState extends State<AddImages> {
  //_AddImagesState({Key key,this.isvisible_residentail, this.isvisible_commercial});
  var img = [];
  var type;
  var check;
  var _apartment = 1;
  var _house = 2;
  var _pg = 3;
  var _room = 4;
  var _commercial_appartments=5;
  var _shops=6;
  var _office_spaces=7;
  var _stores=8;
  bool value = false;
  bool isvisible_residentail = false;
  bool isvisibleresidentail;
  bool isvisiblecommercial;
  bool isvisible_commercial = false;
  List<bool> _isselected = [false, false, false];
  final RegExp phoneReg = new RegExp(r"^[0-9]{10}$");
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[800],
      child: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            //width: MediaQuery.of(context).size.width,
            // height: 300,
            //color: Colors.grey[200],
            //   alignment: Alignment.t,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                //'Post Ad In Just 3 Steps',
                'Start Listing :',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Recursive',
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    decoration: TextDecoration.none),
              ),
            ),
          ),
          Container(
            //width: MediaQuery.of(context).size.width,
            // height: 300,
            //color: Colors.grey[200],
            //   alignment: Alignment.t,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                //'Post Ad In Just 3 Steps',
                'Post Ad In Just 3 Steps',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Recursive',
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    decoration: TextDecoration.none),
                textScaleFactor: 1.2,
              ),
            ),
          ),
          // Padding(
          //  padding: const EdgeInsets.all(8.0),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Container(
              // width: MediaQuery.of(context).size.width / 1.2,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[800],
                ),
                child: Row(
                  children: [
                    CustomPaint(
                      painter: StraightLine(),
                      child: Container(
                        child: null,
                        width: 50,
                      ),
                    ),
                    /*  Expanded(
                      flex: 2,
                      child: */
                    Container(
                      alignment: Alignment.centerLeft,
                      // color: Colors.green,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(35, 0, 10, 0),
                            child: Text(
                              'Location ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  decoration: TextDecoration.none),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(80, 0, 10, 0),
                              child: Text(
                                'Upload Images',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    decoration: TextDecoration.none),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Text(
                              'Price ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                decoration: TextDecoration.none,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // ),
                  ],
                )),
          ),
          Card(
              color: Colors.blue[800],
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 30),
                    child: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Property Type:',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Recursive',
                            fontSize: 25,
                            fontWeight: FontWeight.w400
                          ),
                          textAlign: TextAlign.left,
                          //  textScaleFactor: 1.3,
                        )),
                  ),
                  //Togale(),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        ToggleButtons(
                          children: <Widget>[
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 15),
                              child: Text('Residential',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontFamily: 'Recursive',
                                  )),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 15),
                              child: Text('Commercial',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontFamily: 'Recursive',
                                  )),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 15),
                              child: Text('Mixed-Use',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontFamily: 'Recursive',
                                  )),
                            )
                          ],
                          onPressed: (int newindex) {
                            int index;
                            setState(() {
                              for (index = 0;
                              index < _isselected.length;
                              index++) {
                                if (newindex == index) {
                                  _isselected[index] = true;
                                } else {
                                  _isselected[index] = false;
                                }
                              }
                              /*if(newindex==0){checkit(newindex);}
                  else{_isvisible=false;}*/
                              checkit(newindex);
                            });
                          },
                          isSelected: _isselected,
                          fillColor: Colors.green,
                          selectedColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: isvisible_residentail,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Container(
                        height: 230,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          /*crossAxisCount: 4,
                    childAspectRatio: 1.0,
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,*/
                          children: [
                            ListTile(
                              title: Text('Apartment'),
                              leading: Radio(
                                toggleable: false,
                                value: _apartment,
                                groupValue: type,
                                onChanged: (proptype) {
                                  setState(() {
                                    type = proptype;
                                    check=1;
                                  });

                                },
                                hoverColor: Colors.black54,
                              ),
                            ),
                            ListTile(
                              title: Text('House/Villa'),
                              leading: Radio(
                                  value: _house,
                                  groupValue: type,
                                  onChanged: (proptype) {
                                    setState(() {
                                      type = proptype;
                                      check=2;
                                    });
                                  }),
                            ),
                            ListTile(
                              title: Text('PG'),
                              leading: Radio(
                                  value: _pg,
                                  groupValue: type,
                                  onChanged: (proptype) {
                                    setState(() {
                                      type = proptype;
                                      check=3;
                                    });
                                  }),
                            ),
                            ListTile(
                              title: Text('Room'),
                              leading: Radio(
                                  toggleable: false,
                                  value: _room,
                                  groupValue: type,
                                  onChanged: (proptype) {
                                    setState(() {
                                      type = proptype;
                                      check=4;
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /*maintainAnimation: true,
                maintainState: true,*/
                  ),
                  Visibility(
                    visible: isvisible_commercial,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Container(
                        height: 230,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          /*crossAxisCount: 4,
                    childAspectRatio: 1.0,
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,*/
                          children: [
                            ListTile(
                              title: Text('Commercial Apartment'),
                              leading: Radio(
                                toggleable: false,
                                value: _commercial_appartments,
                                groupValue: type,
                                onChanged: (proptype) {
                                  setState(() {
                                    type = proptype;
                                    check=5;
                                  });
                                },
                                hoverColor: Colors.black54,
                              ),
                            ),
                            ListTile(
                              title: Text('Shops'),
                              leading: Radio(
                                  value: _shops,
                                  groupValue: type,
                                  onChanged: (proptype) {
                                    setState(() {
                                      type = proptype;
                                      check=6;
                                    });
                                  }),
                            ),
                            ListTile(
                              title: Text('Office Spaces'),
                              leading: Radio(
                                  value: _office_spaces,
                                  groupValue: type,
                                  onChanged: (proptype) {
                                    setState(() {
                                      type = proptype;
                                      check=7;
                                    });
                                  }),
                            ),
                            ListTile(
                              title: Text('Stores'),
                              leading: Radio(
                                  toggleable: false,
                                  value: _stores,
                                  groupValue: type,
                                  onChanged: (proptype) {
                                    setState(() {
                                      type = proptype;
                                      check=8;
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /*maintainAnimation: true,
                maintainState: true,*/
                  ),
                  /*ListTile(
                onTap: () {
                  setState(() {
                    this.value = !value;
                  });
                },
                leading: Checkbox(
                  value: value,
                  onChanged: (value) {},
                ),
                title: Text('Apartment'),
              ),*/
                  Form(
                    key: _formKey,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(29, 50, 29, 30),
                        child: Container(
                          decoration: BoxDecoration(
                            //    borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              labelText: 'Mobile',
                              errorStyle: TextStyle(
                                  color: Colors.deepOrange, fontSize: 15),
                              border: OutlineInputBorder(
                                //      borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            validator: (value) {
                              if (!phoneReg.hasMatch(value)) {
                                return 'Fill Above Field';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.centerRight,
                          width: MediaQuery.of(context).size.width / 4,
                          child: RaisedButton(
                            onPressed: () {
                              if (_formKey.currentState.validate() ) {
                                if(  isvisible_residentail == true && check==1 || check==2 || check==3 || check==4){Navigator.push(context,MaterialPageRoute(builder: (context){return Residential();}));}
                                else if( isvisible_commercial == true && check==5 || check==6 || check==7 || check==8){Navigator.push(context,MaterialPageRoute(builder: (context){return Commercial();}));}
                                else if(isvisible_residentail == false && isvisible_commercial == false){Navigator.push(context,MaterialPageRoute(builder: (context){return Mixed();}));}

                              }
                              else {
                                print('Error');
                              }
                            },
                            color: Colors.green,
                            child: Row(
                              children: [
                                Text(
                                  'Start',
                                  style: TextStyle(
                                      color: Colors.grey[200], fontSize: 18),
                                ),
                                // SizedBox(width: 10,),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(2, 0, 0, 0),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.grey[200],
                                  ),
                                )
                              ],
                            ),
                          )),
                    ]),
                  ),
                ],
              ))
          //)
        ],
      ),
    );
  }

  void checkit(int newindex) {
    if (newindex == 0) {
      isvisible_residentail = true;
      isvisible_commercial = false;
    } else if (newindex == 1) {
      isvisible_commercial = true;
      isvisible_residentail = false;
    } else {
      isvisible_commercial = false;
      isvisible_residentail = false;
    }
  }
}

