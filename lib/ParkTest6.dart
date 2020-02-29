import 'package:flutter/material.dart';
import 'package:gerie/ParkTest7.dart';
import 'dart:async';

import 'package:gerie/parkTest.dart';
class ParkTest6 extends StatefulWidget{
  static const String id="parkTest6";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ParkTest6State();
  }

}
class ParkTest6State extends State<ParkTest6> {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: RaisedButton(onPressed: () {
          Navigator.pushNamed(context,ParkTest7.id);
        },
            child: Container(

                child: Padding(padding: EdgeInsets.fromLTRB(30, 7, 3, 9),

                  child: Material(

                    elevation: 5.0,
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(1.0),
                    child: MaterialButton(
                      onPressed: () {
                        ParkTestState.hitcounts++;
                        Navigator.pushNamed(context,ParkTest7.id);

                      },
                      minWidth: 2,
                      height: 2,
                      child: Text(
                        '*',
                      ),
                    ),),))));
  }
}