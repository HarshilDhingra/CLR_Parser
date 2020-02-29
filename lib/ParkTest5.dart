import 'package:flutter/material.dart';
import 'package:gerie/ParkTest6.dart';
import 'dart:async';

import 'package:gerie/parkTest.dart';
class ParkTest5 extends StatefulWidget{
  static const String id="parkTest5";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ParkTest5State();
  }

}
class ParkTest5State extends State<ParkTest5> {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: RaisedButton(onPressed: () {
          Navigator.pushNamed(context,ParkTest6.id);
        },
            child: Container(

                child: Padding(padding: EdgeInsets.fromLTRB(5, 289, 13, 98),

                  child: Material(

                    elevation: 5.0,
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(1.0),
                    child: MaterialButton(
                      onPressed: () {
                        ParkTestState.hitcounts++;
                        Navigator.pushNamed(context,ParkTest6.id);

                      },
                      minWidth: 2,
                      height: 2,
                      child: Text(
                        '*',
                      ),
                    ),),))));
  }
}