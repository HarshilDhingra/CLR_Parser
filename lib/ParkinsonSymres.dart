import 'package:flutter/material.dart';
import 'package:gerie/ParkPopUp.dart';
import 'package:gerie/ParkinsonSym.dart';
import 'package:gerie/checkUps.dart';
import 'package:gerie/parkTest.dart';
class ParkinsonSymres extends StatefulWidget{
  static const String id="ParkinsonSymres";
  @override
  State<StatefulWidget> createState() {
    return ParkinsonSymresState();
  }

}
class ParkinsonSymresState extends State<ParkinsonSymres>{
  int resultValue=ParkinSonState.parkinsonsym_value;
  String Parkinsonsymtest(int resultValue){
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
    return Scaffold(
        backgroundColor: Colors.amber[100],
        body: Container(

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(Parkinsonsymtest(resultValue),style: TextStyle(fontSize: 20.0),),
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
                          Navigator.pushNamed(context,ParkPopUp.id);
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
            ))
    );
  }

}