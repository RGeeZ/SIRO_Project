import 'package:flutter/material.dart';
import 'pricing.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool small = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //   primaryColor: Colors.blue[800],
      ),
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: ListView(
            children: [
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
                              'Filter',
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
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 10, 10),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Price',
                            style:
                            TextStyle(color: Colors.black54, fontSize: 30)),
                      ),
                    ),
                    ListTile(
                      leading: Checkbox(
                        value: small,
                        onChanged: (value) {
                          setState(() {
                            this.small = value;
                          });
                        },
                      ),
                      title: Text('Below 5000'),
                      onTap: () {
                        setState(() {
                          this.small = !small;
                        });
                        // this.small=value;
                      },
                    ),
                    ListTile(
                      leading: Checkbox(
                        value: small,
                        onChanged: (value) {
                          setState(() {
                            this.small = value;
                          });
                        },
                      ),
                      title: Text('5000-7000'),
                      onTap: () {
                        setState(() {
                          this.small = !small;
                        });
                        // this.small=value;
                      },
                    ),
                    ListTile(
                      leading: Checkbox(
                        value: small,
                        onChanged: (value) {
                          setState(() {
                            this.small = value;
                          });
                        },
                      ),
                      title: Text('7000-9000'),
                      onTap: () {
                        setState(() {
                          this.small = !small;
                        });
                        // this.small=value;
                      },
                    ),
                    ListTile(
                      leading: Checkbox(
                        value: small,
                        onChanged: (value) {
                          setState(() {
                            this.small = value;
                          });
                        },
                      ),
                      title: Text('9000-11000'),
                      onTap: () {
                        setState(() {
                          this.small = !small;
                        });
                        // this.small=value;
                      },
                    ),
                    ListTile(
                      leading: Checkbox(
                        value: small,
                        onChanged: (value) {
                          setState(() {
                            this.small = value;
                          });
                        },
                      ),
                      title: Text('11000-13000'),
                      onTap: () {
                        setState(() {
                          this.small = !small;
                        });
                        // this.small=value;
                      },
                    ),
                    ListTile(
                      leading: Checkbox(
                        value: small,
                        onChanged: (value) {
                          setState(() {
                            this.small = value;
                          });
                        },
                      ),
                      title: Text('13000-15000'),
                      onTap: () {
                        setState(() {
                          this.small = !small;
                        });
                        // this.small=value;
                      },
                    ),
                    ListTile(
                      leading: Checkbox(
                        value: small,
                        onChanged: (value) {
                          setState(() {
                            this.small = value;
                          });
                        },
                      ),
                      title: Text('Above 15000'),
                      onTap: () {
                        setState(() {
                          this.small = !small;
                        });
                        // this.small=value;
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Divider(
                  color: Colors.blueGrey,
                  thickness: 2,
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 10, 10),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Type',
                            style:
                            TextStyle(color: Colors.black54, fontSize: 30)),
                      ),
                    ),
                    ListTile(
                      leading: Checkbox(
                        value: small,
                        onChanged: (value) {
                          setState(() {
                            this.small = value;
                          });
                        },
                      ),
                      title: Text('Apartments'),
                      onTap: () {
                        setState(() {
                          this.small = !small;
                        });
                        // this.small=value;
                      },
                    ),
                    ListTile(
                      leading: Checkbox(
                        value: small,
                        onChanged: (value) {
                          setState(() {
                            this.small = value;
                          });
                        },
                      ),
                      title: Text('House/Villa'),
                      onTap: () {
                        setState(() {
                          this.small = !small;
                        });
                        // this.small=value;
                      },
                    ),
                    ListTile(
                      leading: Checkbox(
                        value: small,
                        onChanged: (value) {
                          setState(() {
                            this.small = value;
                          });
                        },
                      ),
                      title: Text('PGs'),
                      onTap: () {
                        setState(() {
                          this.small = !small;
                        });
                        // this.small=value;
                      },
                    ),
                    ListTile(
                      leading: Checkbox(
                        value: small,
                        onChanged: (value) {
                          setState(() {
                            this.small = value;
                          });
                        },
                      ),
                      title: Text('Rooms'),
                      onTap: () {
                        setState(() {
                          this.small = !small;
                        });
                        // this.small=value;
                      },
                    ),
                    ListTile(
                      leading: Checkbox(
                        value: small,
                        onChanged: (value) {
                          setState(() {
                            this.small = value;
                          });
                        },
                      ),
                      title: Text('Commercial Apartments'),
                      onTap: () {
                        setState(() {
                          this.small = !small;
                        });
                        // this.small=value;
                      },
                    ),
                    ListTile(
                      leading: Checkbox(
                        value: small,
                        onChanged: (value) {
                          setState(() {
                            this.small = value;
                          });
                        },
                      ),
                      title: Text('Office Spaces'),
                      onTap: () {
                        setState(() {
                          this.small = !small;
                        });
                        // this.small=value;
                      },
                    ),
                    ListTile(
                      leading: Checkbox(
                        value: small,
                        onChanged: (value) {
                          setState(() {
                            this.small = value;
                          });
                        },
                      ),
                      title: Text('Store'),
                      onTap: () {
                        setState(() {
                          this.small = !small;
                        });
                        // this.small=value;
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
