import 'package:flutter/material.dart';
//import 'package:mailer/mailer.dart';
//import 'package:mailer/smtp_server.dart';
import 'package:mailer2/mailer.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                Function();
              },
              child: Text('email'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
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
  ..recipients = ['saharshithasa@gmail.com', 'sidsingh130698@gmail.com']
  ..subject = 'Your subject'
  ..text = 'Here goes your body message';

// Finally, send it!
transport.send(envelope)
.then((_) => print('email sent!'))
.catchError((e) => print('Error: $e'));
}