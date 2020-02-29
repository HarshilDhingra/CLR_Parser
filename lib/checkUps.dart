import 'package:flutter/material.dart';
import 'package:gerie/AlzSym.dart';
import 'package:gerie/DepressionSym.dart';
import 'package:gerie/ParkinsonSym.dart';
class CheckUp extends StatefulWidget {
  static const String id="Check_up";
  @override
  State<StatefulWidget> createState() {

    // TODO: implement createState
    return CheckUpState();
  }
}
class CheckUpState extends State<CheckUp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text("Available Checkups") ,
        backgroundColor: Colors.redAccent,
        centerTitle: true,

      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 48.0,
              width: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),

                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, DepressionSym.id);
                  },
                  minWidth: 20.0,
                  height: 42.0,
                  child: Text(
                    'General Psychological analysis',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical:12.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AlzSym.id);
                   },
                  minWidth: 20.0,
                  height: 42.0,
                  child: Text(
                    "Alzheimer's Symptomps Checkup",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical:12.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ParkinSon.id);
                  },
                  minWidth: 20.0,
                  height: 42.0,
                  child: Text(
                    "Parkinson's Disease Checkup",
                  ),
                ),
              ),
            )
          ],
        ),
      )
      );
  }

}