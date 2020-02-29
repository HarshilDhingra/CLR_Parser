import 'package:flutter/material.dart';
import 'dart:async';

import 'package:gerie/ParkTest2.dart';
class parkTest extends StatefulWidget{
  static const String id="parkTest";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ParkTestState();
  }

}
class ParkTestState extends State<parkTest> {
  static int hitcounts = 0;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body:RaisedButton(onPressed: () {
          Navigator.pushNamed(context,ParkTest2.id);
        },

            child: Container(


              child: Padding(padding: EdgeInsets.fromLTRB(68, 67, 45, 100),

              child: Material(

                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(1.0),
                child: MaterialButton(
                  onPressed: () {
                    hitcounts++;
                    Navigator.pushNamed(context,ParkTest2.id);

                  },
                  minWidth: 0.0032,
                  height: 0.002,
                  child: Text(
                    '*',
                  ),
                ),),))));
  }
}