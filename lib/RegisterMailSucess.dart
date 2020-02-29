import 'package:flutter/material.dart';
import 'package:gerie/Login_Screen.dart';
import 'package:gerie/checkUps.dart';
class RegisterMailSuccess extends StatefulWidget{
  static const String id="RegisterMailSuccess";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterMailSuccessState();

  }

}
class RegisterMailSuccessState extends State<RegisterMailSuccess> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Container(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Your mail is sent sucessfully!!!\n "),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Material(
                      elevation: 5.0,
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(30.0),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, LoginScreen.id);
                        },
                        minWidth: 200.0,
                        height: 42.0,
                        child: Text(
                          'Go Back to Login Screen',
                        ),
                      ),
                    ),
                  ),
                ],
              )
          )
      ),
    );
  }
}

