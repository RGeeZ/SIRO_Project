import 'package:flutter/material.dart';
import  'signup.dart';
import 'sigin.dart';

/*void main() {
  runApp(MyApp());
}*/
class Check extends StatefulWidget {
  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          //width:MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(height: 60,),
              Text(
                'SIRO',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 50,
                      offset: Offset(0, 10),
                    )
                  ],
                ),
                textScaleFactor: 1.5,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 160,),
              RaisedButton(child:Container(height: 50,child: Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  children: <Widget>[
                    Image(image: AssetImage('images/room.png'),),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(60,1,1,1),
                      child: Text('Sign in with Google',style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                  ],
                ),
              ),),onPressed: (){},color: Colors.blueAccent[700],),
              SizedBox(height: 30,),
              RaisedButton(child:Container(height:50,child: Row(
                children: <Widget>[
                  Icon(Icons.login,color: Colors.white,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60,1,1,1),
                    child: Text('Sign-up Manually',style: TextStyle(color: Colors.white,fontSize: 18)),
                  ),
                ],
              ),),onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context){return SignUp();}));
              },color: Colors.red,),
              SizedBox(height: 30,),
              RaisedButton(child:Container(height:50,child: Row(
                children: <Widget>[
                   Icon(Icons.login_outlined,color: Colors.white,),
                  Padding(padding: const EdgeInsets.fromLTRB(60,1,1,1),
                    child: Text('Sign-in Again ',style: TextStyle(color: Colors.white,fontSize: 18)),
                  ),
                ],
              ),),onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context){return SignIn();}));
              },color: Colors.grey,),
            ],
          ),
        ),

      ),
    );
  }
}

/*class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.blue[900],
      ),
      home: Check(),
    );
  }
}*/

