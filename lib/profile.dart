import 'package:flutter/material.dart';



class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  //int _current=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.blue[900],
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Column(children: <Widget>[
                  SizedBox(height: 50,),
                  IconButton(
                    icon: Icon(Icons.account_circle_rounded,),

                    onPressed: () {},
                    iconSize: 200,
                    color: Colors.white,
                  )
                ]),
              ),
            ),

            //  header(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.only(

                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),

                    )),

                child: Padding(
                    padding: EdgeInsets.all(30),
                    child: ListView(children: <Widget>[

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
                                blurRadius: 10,
                              )]
                          ),
                          child: ListTile(

                            leading: Icon(Icons.logout),
                            title: Text('Log out',style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Recursive',
                            ),),
                            onTap: (){
                            },
                            trailing: Icon(Icons.arrow_forward_ios_sharp),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8,20,8,8),
                        child: Container(
                          height: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                offset: Offset(0,10),
                                blurRadius: 10,
                              )]
                          ),
                          child: ListTile(

                            leading: Icon(Icons.share),
                            title: Text('Home Services',style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Recursive',
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),),
                            onTap: (){},
                            trailing: Icon(Icons.arrow_forward_ios_sharp),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8,20,8,8),
                        child: Container(
                          height: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                offset: Offset(0,10),
                                blurRadius: 10,
                              )]
                          ),
                          child: ListTile(

                            leading: Icon(
                              Icons.history
                            ),
                            title: Text('Home Services',style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Recursive',
                            ),),
                            onTap: (){
                              print('hi');
                              print('bi');
                            },
                            trailing: Icon(Icons.arrow_forward_ios_sharp),
                          ),
                        ),
                      ),

                    ])),

              ),
            )
          ],
        ),
      ),

    );
  }
}

