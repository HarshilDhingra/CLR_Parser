import 'package:flutter/material.dart';
import 'package:gerie/ParkMailPopUp.dart';
import 'dart:async';

import 'package:gerie/parkTest.dart';
class ParkTest7 extends StatefulWidget{
  static const String id="parkTest7";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ParkTest7State();
  }

}
class ParkTest7State extends State<ParkTest7> {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: RaisedButton(onPressed: () {
          Navigator.pushNamed(context, ParkMailPopUp.id);

        },
            child: Container(

                child: Padding(padding: EdgeInsets.fromLTRB(40, 437, 23, 9),

                  child: Material(

                    elevation: 5.0,
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(1.0),
                    child: MaterialButton(
                      onPressed: () {
                        ParkTestState.hitcounts++;
                        Navigator.pushNamed(context, ParkMailPopUp.id);


                      },
                      minWidth: 2,
                      height: 2,
                      child: Text(
                        '*',
                      ),
                    ),),))));
  }
}