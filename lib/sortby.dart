import 'package:flutter/material.dart';
class SortBy extends StatefulWidget {
  @override
  _SortByState createState() => _SortByState();
}

class _SortByState extends State<SortBy> {
  Color element1=Colors.white;
  Color element2=Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
              children:<Widget>[
                Container(height: 20,),
                Container(
                  color: Colors.blue[900],
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Flexible(
                          fit: FlexFit.loose,
                          child: Container(
                            child: IconButton(
                              icon: Icon(Icons.arrow_back_sharp),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              color: Colors.white,
                            ),
                          )),
                      Flexible(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Sort-By',
                                style:
                                TextStyle(color: Colors.white, fontSize: 30),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        //  leading: ,
                        title: Text('Price Low to High'),
                        onTap: () {
                          setState(() {
                            element1=Colors.deepOrangeAccent;
                          });
                          // this.small=value;
                        },
                      ),
                      ListTile(
                        title: Text('Below 5000'),
                        onTap: () {
                          setState(() {
                            element2=Colors.deepOrangeAccent;
                          });
                          // this.small=value;
                        },
                      ),
                    ],
                  ),
                ),
              ]

          ),
        ),
      ),
    );
  }
}
