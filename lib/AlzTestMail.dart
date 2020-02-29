import 'package:flutter/material.dart';
import 'package:gerie/MailSuccess.dart';
import 'package:gerie/Registration_Screen.dart';
//import 'package:mailer/mailer.dart';
//import 'package:mailer/smtp_server.dart';
import 'package:mailer2/mailer.dart';
class AlzTest extends StatefulWidget{
  static const String id="AlzTest";

  @override
  State<StatefulWidget> createState() {
    return AlzTestState();
  }

}
class AlzTestState extends State<AlzTest>{
 static String replyq1,replyq2,replhyq3,replyq4,replyq5,replyq6;
  static String Q1="where were you born?",Q2="What is your Date of Birth",Q3="What is your spouses father's name",Q4="What is the name of your neighbour",Q5="Date of Birth of your first child",Q6="What was your first job?";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Padding(padding: EdgeInsets.all(5.0),),
            TextField(

            keyboardType:TextInputType.text,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              focusColor: Colors.blue,
              hintText:Q1 ,
              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
            ),
            onChanged: (value){
              replyq1=value;
            },
          ),
            Padding(padding: EdgeInsets.all(5.0),),
            TextField(

              keyboardType:TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusColor: Colors.blue,
                hintText: Q2,
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
              onChanged: (value){
                replyq2=value;
              },
            ),
            Padding(padding: EdgeInsets.all(5.0),),
            TextField(

              keyboardType:TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusColor: Colors.blue,
                hintText: Q3,
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
              onChanged: (value){
                replhyq3=value;
              },
            ),Padding(padding: EdgeInsets.all(5.0),),
            TextField(

              keyboardType:TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusColor: Colors.blue,
                hintText: Q4,
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
              onChanged: (value){
                replyq4=value;
              },
            ),Padding(padding: EdgeInsets.all(5.0),),
            TextField(

              keyboardType:TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusColor: Colors.blue,
                hintText: Q5,
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
              onChanged: (value){
                replyq5=value;
              },
            ),
            Padding(padding: EdgeInsets.all(5.0),),
            TextField(

              keyboardType:TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusColor: Colors.blue,
                hintText: Q6,
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
              onChanged: (value){
                replyq6=value;
              },
            ),
            Padding(padding: EdgeInsets.all(5.0),),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Function();
                    Navigator.pushNamed(context, MailSuccess.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Send Your Answer',
                  ),
                ),
              ),
            ),




          ],
        ),
      ),
    );
  }

}
class AlzTestMail extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: AlzTestMailReal(title: 'Verfication for Alzheimer test'),
    );
  }
}

class AlzTestMailReal extends StatefulWidget {
  AlzTestMailReal({Key key, this.title}) : super(key: key);



  final String title;

  @override
  AlzTestMailRealState createState() => AlzTestMailRealState();
}

class AlzTestMailRealState extends State<AlzTestMailReal> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
//  void customLaunch(command) async{
//    if(await canLaunch(command)){
//      await launch(command);
//    }
//    else{
//      print('$command');
//    }
//  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),


    );
  }
}







void Function() {
var options = new GmailSmtpOptions()
  ..username = 'geriatricgenie@gmail.com'
  ..password = 'root@123';


// Right now only SMTP transport method is supported.
var transport = new SmtpTransport(options);

// Create the envelope to send.
var envelope = new Envelope()
  ..from = 'geriatricgenie@gmail.com'
  ..fromName = 'GeriatricGenie'
  ..recipients = ['saharshithasa@gmail.com', 'sidsingh130698@gmail.com',RegisterState.Nominees_id]
  ..subject = 'Contains Alzheimer Test Verification '
  ..text = 'Here is the candidates answer for alzhemier test\n'+ AlzTestState.Q1+'\n ' +AlzTestState.replyq1+'\n '+ AlzTestState.Q2 +'\n '+AlzTestState.replyq2+'\n '+ AlzTestState.Q3+'\n ' +AlzTestState.replhyq3+'\n '+ AlzTestState.Q4+'\n ' +AlzTestState.replyq4+'\n '+ AlzTestState.Q5+'\n ' +AlzTestState.replyq5+'\n '+ AlzTestState.Q6+'\n ' +AlzTestState.replyq6;

// Finally, send it!
transport.send(envelope)
.then((_) => print('email sent!'))
.catchError((e) => print('Error: $e'));
}