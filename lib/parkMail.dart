import 'package:flutter/material.dart';
import 'package:gerie/MailSuccess.dart';
import 'package:gerie/ParkMailPopUp.dart';
import 'package:gerie/Registration_Screen.dart';
import 'package:gerie/checkUps.dart';
import 'package:gerie/parkTest.dart';
//import 'package:mailer/mailer.dart';
//import 'package:mailer/smtp_server.dart';
import 'package:mailer2/mailer.dart';
class ParkMail extends StatefulWidget{
  static const String id="ParkMail";

  @override
  State<StatefulWidget> createState() {
    return ParkMailState();
  }

}
class ParkMailState extends State<ParkMail>{
     String Results;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(5.0),),Text("Are You Sure about Sending Your Result",style: TextStyle(fontSize: 20),),

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
                    'Yes Send it',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Function();
                    Navigator.pushNamed(context, CheckUp.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'No go Back to CheckUp menu',
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
class ParkMailTest extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ParkMailReal(title: 'Results of Parkinsons Test'),
    );
  }
}

class ParkMailReal extends StatefulWidget {
  ParkMailReal({Key key, this.title}) : super(key: key);



  final String title;

  @override
  ParkMailRealState createState() => ParkMailRealState();
}

class ParkMailRealState extends State<ParkMailReal> {
  int _counter = 0;
  static int  value=ParkTestState.hitcounts;
  static String Result_park(){
    if(value<=5)
      return "you might have Parkinson Better get a checkup";
    else
      return "hurray!you r fine";
  }
   static String Results="The result of candidate is "+":"+Result_park()+"\n He got $value answer correct out of 7";

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
  ..subject = 'Contains Results of Parkinson Test  '
  ..text = ParkMailRealState.Results;
// Finally, send it!
transport.send(envelope)
.then((_) => print('email sent!'))
.catchError((e) => print('Error: $e'));
}