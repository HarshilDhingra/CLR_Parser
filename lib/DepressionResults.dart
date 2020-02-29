import 'package:flutter/material.dart';
import 'package:gerie/DepressionSym.dart';
import 'package:gerie/checkUps.dart';
import 'package:gerie/depressionMail.dart';

class DepressionResults extends StatefulWidget{
  static const String id="DepressionResults";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DepressionResultState();
  }
}
class DepressionResultState extends State<DepressionResults>{
  String Result;
  int value=DepressionSymState.results_point;

  String Depression_level(int value){

    if(value<75)
      return "You are most probably fine ";
    else if(value>=75 && value<85)
      return "You Worry a lot";
    else if(value>=85 && value<95)
      return "You might be Depressed";
    else
      return "Attention is required you might be suffering from depression";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blueAccent,
      body: Container(

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text("YOUR RESULTS",style: TextStyle(color:Colors.red ),),
            Padding(padding:EdgeInsets.all(20.0)),Text(Depression_level(value),style: TextStyle(fontSize: 30.0)),

              SizedBox(
                height: 48.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  elevation: 5.0,
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context,CheckUp.id);
                      },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Go-BacktoMenu',
                    ),
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.all(32.0),
              ),
              SizedBox(
                height: 48.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  elevation: 5.0,
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context,DepressionMail.id);
                     },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Send Mail',
                    ),
                  ),
                ),
              )
            ],

          ),
        ),
      ),
    );
  }

}
