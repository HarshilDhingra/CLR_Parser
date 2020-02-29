import 'package:flutter/material.dart';
import 'package:gerie/AlzPermPopUp.dart';
import 'package:gerie/AlzSym.dart';
import 'package:gerie/checkUps.dart';
class AlzSymRes extends StatefulWidget{
  static const String id="AlzSymRes";

  @override
  State<StatefulWidget> createState() {
    return AlzSymResState();

  }

}
class  AlzSymResState extends State<AlzSymRes>{
  int resultValue=AlzSymState.alzvalue;
  String AlzTest(int resultValue){
    if(resultValue>75)
      {
        return 'You Really Need To Take The Test';
      }
    else if(resultValue<75 &&resultValue>60)
      {
        return 'Your Choice To Test Or Not';
      }
    else{
      return 'No Need To Worry';
    }

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: Container(

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(AlzTest(resultValue),style: TextStyle(fontSize: 20.0),),
              SizedBox(
                height: 48.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  elevation: 5.0,
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AlzPermPopUp.id);
                    },
                    height: 42.0,
                    child: Text(
                      'Take The Test',
                    ),
                  ),
                ),
              ),    SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  elevation: 5.0,
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, CheckUp.id);
                    },
                    height: 42.0,
                    child: Text(
                      'Go Back To Check-up Menu',
                    ),
                  ),
                ),
              ),],
          ),
    )));

  }

}