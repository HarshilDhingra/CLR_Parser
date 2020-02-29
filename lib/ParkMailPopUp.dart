import 'package:flutter/material.dart';
import 'package:gerie/AlzTestMail.dart';
import 'package:gerie/checkUps.dart';
import 'package:gerie/parkMail.dart';
import 'package:gerie/parkTest.dart';
class ParkMailPopUp extends StatefulWidget{
  static const String id="ParkMailPopUp";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ParkMailPopUpState();
  }

}
class ParkMailPopUpState extends State<ParkMailPopUp>{
   int value=ParkTestState.hitcounts;
   String Result_park(){
    if(value<=5)
      return "you might have Parkinson Better get a checkup";
    else
      return "hurray!you r fine";
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.amberAccent,
        body: Center(

          child:Container(child:Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children:<Widget>[Text("Your Result: "+Result_park(),style: TextStyle(fontSize: 30),),Padding(
                padding: EdgeInsets.all(13),
              ),
                Text("Do you want inform your nominee about this result",style: TextStyle(fontSize: 20),),SizedBox(
                  height: 48.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Material(
                    elevation: 5.0,
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.circular(30.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context,ParkMail.id);
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: Text(
                        'I agree',
                      ),
                    ),
                  ),
                ),Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Material(
                    elevation: 5.0,
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, CheckUp.id);
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: Text(
                        'Go Back to Main Menu',
                      ),
                    ),
                  ),
                ),

              ])),
        ));
  }

}