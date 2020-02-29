import 'package:flutter/material.dart';
import 'package:gerie/Registration_Screen.dart';
import 'package:gerie/checkUps.dart';




class LoginScreen extends StatefulWidget{
  static const String id="Login_screen";
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }

}
class LoginScreenState extends State<LoginScreen>
{
  String loginid;
  String password;
  String login="root";
  String real_password="root@123";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    body: Center(
        child:Container(
        alignment: Alignment.center,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Hero(tag:'logo',child:Container(
          child: Image.asset('android/images/logo.png',height: 200,width: 200,),
        )),
        Padding(padding:EdgeInsets.all(10.0)),
        TextField(

          keyboardType:TextInputType.text,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(32.0)),
            ),
              focusColor: Colors.blue,
            hintText: 'Enter Login-ID',
            contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
        ),
          onChanged: (value){
            loginid=value;
          },
        ),
        Padding(padding:EdgeInsets.all(10.0)),
        TextField(

          obscureText: true,
            keyboardType:TextInputType.text,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              focusColor: Colors.blue,
              hintText: 'Enter Password',
              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
            ),
        onChanged: (value){
            password=value;
        },),
        SizedBox(
          height: 48.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Material(
            elevation: 5.0,
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(30.0),
            child: MaterialButton(
              onPressed: () {
                if((loginid==login&&password==real_password)||(loginid==RegisterState.UserName&&password==RegisterState.PassWord)){
                  Navigator.pushNamed(context, CheckUp.id);}
               else {
                  setState(() {
                      final snackbar = SnackBar(content: Text(
                          "Wrong Credentials Invalid Username and password"));
                      Scaffold.of(context).showSnackBar(snackbar);
    }
                  );
                }},
              minWidth: 200.0,
              height: 42.0,
              child: Text(
                'Log In',
              ),
            ),
          ),
        ),


      ],
    ),
    )));
  }

}