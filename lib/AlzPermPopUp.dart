import 'package:flutter/material.dart';
import 'package:gerie/AlzTestMail.dart';
import 'package:gerie/checkUps.dart';
class AlzPermPopUp extends StatefulWidget{
  static const String id="AlzPermPopUp";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AlzPermPopUpState();
  }

}
class AlzPermPopUpState extends State<AlzPermPopUp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(

        child:Container(child:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children:<Widget>[
          Text("This Test Requires Verification From a family member/Friend Do you give ur consent to mail your answers to your nominee's mail",style: TextStyle(fontSize: 20),),SizedBox(
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
                  Navigator.pushNamed(context,AlzTest.id);
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