import 'package:flutter/material.dart';
import 'package:flutter_app_landing_testing/imagepicker.dart';

class Commercial extends StatefulWidget {
  @override
  _CommercialState createState() => _CommercialState();
}

class _CommercialState extends State<Commercial> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //  canvasColor: Colors.blue[900],
        textSelectionColor: Colors.white,
        textTheme: TextTheme(),
      ),
      home: PropAd(),
    );
  }
}
class PropAd extends StatefulWidget {
  @override
  _PropAdState createState() => _PropAdState();
}

class _PropAdState extends State<PropAd> {
  var _select = ['Select City/District','Agra','Ahmedabad-Central','Ahmedabad-North','Ahmedabad-East','Ahmedabad-West','Ahmedabad-South','Ajmer','Amritsar','Bangalore-Central','Bangalore-Nort ','Bangalore-East ','Bangalore-West ','Bangalore-South ','Bhubaneswar','Bhopal','Chandigarh','Chennai','Coimbatore','Delhi-Central', 'Delhi-East','Delhi-West','Delhi-Nort','Delhi-South','Dehradun','Dhanbad','Faridabad','Gaya','Ghaziabad','Gorakhpur','Gurugram','Greater Noida','Guwahati','Haora','Hyderabad ','Indore','Jaipur','Jalandhar','Jamshedpur','Jammu','Jodhpur','Kanpur','Kota','Mumbai ', 'Kolkata ','Ludhiana','Lucknow','Madurai','Mangalore','Nagpur','Nellore','Noida','Patna','Pune','Raipur','Ranchi','Salem','Srinagar','Surat','Tiruchirappalli','Tirunelveli','Thiruvananthapuram','Udaipur','Ujjain','Visakhapatnam','Vadodara','Varanasi','Vijayawada','Warangal'];
  var _select2 = ['Select State', 'Andhra Pradesh', 'Arunachal Pradesh', 'Assam','Bihar','Delhi','Chhattisgarh','Goa','Gujarat','Haryana','	Himachal Pradesh','Jharkhand','Karnataka','Kerala','Madhya Pradesh','Maharashtra','Manipur','Meghalaya','Mizoram','Nagaland','Odisha','Punjab','Rajasthan','Sikkim','Tamil Nadu','Telangana','Tripura','Uttar Pradesh','Uttarakhand','West Bengal',];
  var currentItemSelected = 'Select City/District';
  var currentItemSelected2 = 'Select State';
  final RegExp phoneReg = new RegExp(r"^[0-9]{10}$");
  List<Object> images = List<Object>();
  var StateCheck;
  bool StateValue=false;
  var CityCheck;
  bool CityValue=false;
  bool cityaddvalue=false;
  final formkey=GlobalKey<FormState>();
  //Future<File> _imageFile;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      images.add("Add Image");
      images.add("Add Image");
      images.add("Add Image");
      images.add("Add Image");
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue[600]),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Container(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Location ',
                  style: TextStyle(
                      color: Colors.blue[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: 'Recursive',
                      shadows: [Shadow(offset: Offset(0, 10), blurRadius: 25)]),
                  textAlign: TextAlign.center,
                  textScaleFactor: 1.5,
                ),
              ),
              Form(
                key: formkey,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Column(
                    children: [
                      // Padding(
                      //  padding: const EdgeInsets.all(15.0),
                      //child:
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: TextFormField(
                          keyboardType: TextInputType.streetAddress,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            labelText: 'Property No./Shop No./Apartment No. (Optional)',
                            errorStyle: TextStyle(
                                color: Colors.deepOrange, fontSize: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: TextFormField(
                          keyboardType: TextInputType.streetAddress,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            labelText: 'Apartment/Society',
                            errorStyle: TextStyle(
                                color: Colors.deepOrange, fontSize: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Fill Above Field';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: TextFormField(
                          keyboardType: TextInputType.streetAddress,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            labelText: 'Locality',
                            errorStyle: TextStyle(
                                color: Colors.deepOrange, fontSize: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Fill Above Field';
                            }
                            return null;
                          },
                        ),
                      ),

                      // ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: DropdownButton(
                            items: _select.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (String currentItem) {
                              setState(() {
                                this.currentItemSelected = currentItem;
                                CityCheck= currentItem;
                                ValueCheck();
                              });
                            },
                            value: currentItemSelected,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,10,10,10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Icon(Icons.info_outline_rounded),
                              Text('Your city name is not in list fill the below area',style: TextStyle(color: Colors.black54,fontFamily: 'Recursive',fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,10,10,10),
                        child: Container(
                          width: MediaQuery.of(context).size.width ,
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10,0,10,0),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                labelText: 'City Name',
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                labelStyle: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                              onChanged: (value){
                                _select[_select.length]=value.toString();
                              },
                              validator: (value){
                                if(value.length<=2){
                                  cityadd();
                                }
                                return null;
                              },
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black54,
                              width: 0.8,
                            ),
                          ),),
                      ),


                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: DropdownButton(
                            items: _select2.map((String dropDownStringItem2) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem2,
                                child: Text(dropDownStringItem2),
                              );
                            }).toList(),
                            onChanged: (String currentItem2) {
                              setState(() {
                                this.currentItemSelected2 = currentItem2;
                                StateCheck= currentItem2;
                                ValueCheck();
                              });
                            },
                            value: currentItemSelected2,
                          ),
                        ),
                      ),
                      Container(height: 50,),
                      /* Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            fillColor: Colors.lightBlueAccent,
                            labelText: 'Mobile',
                            errorStyle: TextStyle(
                                color: Colors.deepOrange, fontSize: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          validator: (value) {
                            if (!phoneReg.hasMatch(value)) {
                              return 'Fill Above Field';
                            }
                            return null;
                          },
                        ),
                      ),*/
                      Container(
                          alignment: Alignment.centerRight,
                          //width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RaisedButton(
                              elevation: 8,
                              onPressed: () {
                                if(formkey.currentState.validate() && StateValue==true && (CityValue==true || cityaddvalue==true)){
                                  Navigator.push(context,MaterialPageRoute(builder: (context){return ImagePicker();}));
                                }
                                else{
                                 Alert(context);
                                }
                              },
                              color: Colors.blue[800],
                              child: Text(
                                'Next',
                                style: TextStyle(
                                    fontFamily: 'Recursive',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  ValueCheck(){
    if(StateCheck!='Select State'){
      StateValue=true;
    }
    if(CityCheck!='Select City'){
      CityValue=true;
    }
  }
  void cityadd(){
    cityaddvalue=true;
  }
}

Alert(BuildContext context){
  Widget okbutton=FlatButton(onPressed: (){Navigator.pop(context);}, child: Text('OK'));
  AlertDialog error=AlertDialog(
    content: Text('Fill up State,City'),
    actions: [okbutton],
  );
  showDialog(
      context:context,
      builder:(BuildContext context){
        return error;
      }
  );
}