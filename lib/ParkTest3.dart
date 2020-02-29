import 'package:flutter/material.dart';
import 'package:gerie/ParkTest4.dart';
import 'dart:async';

import 'package:gerie/parkTest.dart';
class ParkTest3 extends StatefulWidget{
  static const String id="parkTest3";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ParkTest3State();
  }

}
class ParkTest3State extends State<ParkTest3> {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: RaisedButton(onPressed: () {
          Navigator.pushNamed(context,ParkTest4.id);
        },
            child: Container(

                child: Padding(padding: EdgeInsets.fromLTRB(178, 87, 56, 45),

                  child: Material(

                    elevation: 5.0,
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(1.0),
                    child: MaterialButton(
                      onPressed: () {
                        ParkTestState.hitcounts++;
                        Navigator.pushNamed(context,ParkTest4.id);

                      },
                      minWidth: 2,
                      height: 2,
                      child: Text(
                        '*',
                      ),
                    ),),))));
  }
}