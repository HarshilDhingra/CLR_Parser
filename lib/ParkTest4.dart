import 'package:flutter/material.dart';
import 'package:gerie/ParkTest5.dart';
import 'dart:async';

import 'package:gerie/parkTest.dart';
class ParkTest4 extends StatefulWidget{
  static const String id="parkTest4";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ParkTest4State();
  }

}
class ParkTest4State extends State<ParkTest4> {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: RaisedButton(onPressed: () {
          Navigator.pushNamed(context,ParkTest5.id);
        },
            child: Container(

                child: Padding(padding: EdgeInsets.fromLTRB(100, 7, 178, 129),

                  child: Material(

                    elevation: 5.0,
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(1.0),
                    child: MaterialButton(
                      onPressed: () {
                        ParkTestState.hitcounts++;
                        Navigator.pushNamed(context,ParkTest5.id);

                      },
                      minWidth: 2,
                      height: 2,
                      child: Text(
                        '*',
                      ),
                    ),),))));
  }
}