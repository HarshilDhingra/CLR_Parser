import 'package:flutter/material.dart';
import 'package:gerie/Login_Screen.dart';
import 'package:gerie/RegisterMail.dart';
import 'package:gerie/Registration_Screen.dart';
class Register extends StatefulWidget{
  static const id='registration_screen';
  @override
  State<StatefulWidget> createState() {
    return RegisterState();
  }

}
class RegisterState extends State<Register>{
  static String UserName;
  static String PassWord;
  static String Nominees_id;
  static String User_Email_id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(32.0),),
            TextField(
                keyboardType:TextInputType.text,
                onChanged:(value) {
                  UserName="G"+value+".g";

                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusColor: Colors.blue,
                  hintText: 'Enter Your Name',
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                )),
            Padding(padding: EdgeInsets.all(10.0),),
            TextField(
                keyboardType:TextInputType.text,
                onChanged: (value){
                  PassWord=value;
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusColor: Colors.blue,
                  hintText: 'Enter New PassWord',
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  ),
                ),
            Padding(padding: EdgeInsets.all(10.0),),
            TextField(
                keyboardType:TextInputType.emailAddress,
                onChanged: (value){
                  User_Email_id=value;
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusColor: Colors.blue,
                  hintText: 'Enter your EmailAddress',
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),

                )),
            Padding(padding: EdgeInsets.all(10.0),),
            TextField(
                keyboardType:TextInputType.text,
                onChanged: (value){
                  Nominees_id=value;
                },
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusColor: Colors.blue,
                    hintText: 'Enter Nominee_s email id ',
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0
                        ),
                        )))),Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            child: Material(
                              elevation: 5.0,
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(30.0),
                              child: MaterialButton(
                                onPressed: () {

                                  Navigator.pushNamed(context, RegisterMail.id);
                                  },
                                minWidth: 200.0,
                                height: 42.0,
                                child: Text(
                                  'Register',
                                ),
                              ),
                            ),
                          )


          ],

        ),
      ),
    );
  }

}