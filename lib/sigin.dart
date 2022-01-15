import 'package:flutter/material.dart';

/*void main() {
  runApp(MyApp());
}*/
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.blue[900],
        child: Column(

          children: <Widget>[
            SizedBox(
              height: 200,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Container(
                  child: Column(children: <Widget>[
                    Container(
                        child: Padding(
                          padding:EdgeInsets.fromLTRB(5, 20, 20, 10),
                          child: Row(
                              children:<Widget>[
                                Expanded(
                                  child: IconButton(
                                    icon:Icon(Icons.arrow_back_sharp),
                                    color: Colors.white,
                                    onPressed: (){Navigator.pop(context);},
                                    alignment: Alignment(-1.0,0.0),

                                  ),
                                ),
                                /*Padding(
                                  padding: EdgeInsets.fromLTRB(0.0, 20, 0, 10),
                                  child: IconButton(
                                    icon: Icon(Icons.),
                                    /*'S',
                                    style: TextStyle(color: Colors.white, fontSize: 10),
                                    textScaleFactor: 2.0,
                                    textAlign: TextAlign.left,*/
                                  ),
                                ),*/

                              ]),
                        )),
                    Text(
                      'SIRO',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textScaleFactor: 1.5,
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ),
              ),
            ),
            //  header(),
            Container(
              // child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60

                    )),

                //  child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 90,
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.blueAccent[400],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextFormField(
                          scrollPadding: EdgeInsets.all(10),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            errorStyle: TextStyle(
                                color: Colors.deepOrange, fontSize: 15.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          validator: (value){
                            if(value.isEmpty){
                              return 'Kindly fill This Field';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          scrollPadding: EdgeInsets.all(10),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            errorStyle: TextStyle(
                                color: Colors.deepOrange, fontSize: 15.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          validator: (value){
                            if(value.isEmpty){
                              return 'Kindly Fill This Field';
                            }
                            return null;
                          },
                        ),

                        SizedBox(
                          height: 50,
                        ),
                        Text('Forget Password?', textAlign: TextAlign.right,),
                        SizedBox(height: 30,),
                        Container(
                          width: 200,
                          height: 50,
                          child: RaisedButton(
                              color: Theme.of(context).primaryColorDark,
                              elevation: 6.0,
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                    color: Colors.white,
                                    /*fontWeight: FontWeight.bold,*/
                                    fontSize: 15),
                                textScaleFactor: 1.5,
                              ),
                              onPressed: () {}),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    )),
                //),
              ),
              //),
            ),
          ],
        ),
      ),
    );
  }
}


/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}*/

