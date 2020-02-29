import 'package:flutter/material.dart';
import 'package:gerie/parkTest.dart';
class ParkPopUp extends StatefulWidget{
  static const String id="ParkPopUp";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ParkPopUpState();
  }
}
class ParkPopUpState extends State<ParkPopUp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text("Press the buttons in upcoming screens !!!!"),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, parkTest.id);
                   },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Go to Test',
                  ),
                ),
              ),
            )],

        )

      ),
    );
  }

}