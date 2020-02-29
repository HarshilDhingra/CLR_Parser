import 'package:flutter/material.dart';
import 'package:gerie/ParkTest3.dart';
import 'dart:async';

import 'package:gerie/parkTest.dart';
class ParkTest2 extends StatefulWidget{
  static const String id="parkTest2";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ParkTest2State();
  }

}
class ParkTest2State extends State<ParkTest2> {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: RaisedButton(onPressed: () {
          Navigator.pushNamed(context,ParkTest3.id);
        },
            child: Container(

                child: Padding(padding: EdgeInsets.fromLTRB(300, 97, 23, 9),

                  child: Material(

                    elevation: 5.0,
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(1.0),
                    child: MaterialButton(
                      onPressed: () {
                        ParkTestState.hitcounts++;
                        Navigator.pushNamed(context,ParkTest3.id);

                      },
                      minWidth: 2,
                      height: 2,
                      child: Text(
                        '*',
                      ),
                    ),),))));
  }
}