import 'package:flutter/material.dart';
import 'package:gerie/ParkinsonSymres.dart';
class ParkinSon extends StatefulWidget{
  static const String id="ParkinsonSym_screen";
  @override
  State<StatefulWidget> createState(){
    return ParkinSonState();
  }
}





class ParkinSonState extends State<ParkinSon>{
  List<String> questions=[
    'Do you experience painful muscle stiffness which is making you limit your activities?',
    'Do you feel you’re posture is stooped and have problem balancing?',
    'Are you unable to write like you used to before? Or has your handwriting become small and different from earlier?',
    'Do you feel that your way of conversing has changed? Has your tone come down or are you unable to process before making a statement?',
    'How often have you noticed changes in your involuntary movements like blinking, smiling etc. ?',
    'Do you feel doing even the smallest of chores has become a huge task for you?',
    'How often do you feel you’re unable to walk like before?'
  ];
  List<int> if_always=[18,15,20,18,15,15,15];
  List<int> if_sometimes=[4,5,2,4,5,5,5];
  List<int> if_frequently=[8,10,8,8,10,10,10];
  List<int> if_never=[0,0,0,0,0,0,0];
  static int parkinsonsym_value=0;
  int result_value=0;
  int questionNumber=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        questions[questionNumber],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text(
                        'Always',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),

                      onPressed: () {
                        if(questionNumber>=6)
                        {
                          result_value+=if_always[questionNumber];
                          parkinsonsym_value=result_value;
                          Navigator.pushNamed(context,ParkinsonSymres.id);
                        }
                        else if(questionNumber<=5)
                          setState(() {
                            result_value+=if_always[questionNumber];
                            questionNumber++;
                          });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(
                      color: Colors.green,
                      child: Text(
                        'Sometimes',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        if(questionNumber>=6)
                        {
                          result_value+=if_sometimes[questionNumber];
                          parkinsonsym_value=result_value;
                          Navigator.pushNamed(context,ParkinsonSymres.id);
                        }
                        else if(questionNumber<=5)
                          setState(() {
                            result_value+=if_sometimes[questionNumber];
                            questionNumber++;
                          });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(
                      color: Colors.green,
                      child: Text(
                        'Frequently',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        if(questionNumber>=6)
                        {
                          result_value+=if_frequently[questionNumber];
                          parkinsonsym_value=result_value;
                          Navigator.pushNamed(context,ParkinsonSymres.id);
                        }
                        else if(questionNumber<=5)
                          setState(() {
                            result_value+=if_frequently[questionNumber];
                            questionNumber++;
                          });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(
                      color: Colors.green,
                      child: Text(
                        'Never',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        if(questionNumber>=6)
                        {
                          result_value+=if_never[questionNumber];
                          parkinsonsym_value=result_value;
                          Navigator.pushNamed(context,ParkinsonSymres.id);
                        }
                        else if(questionNumber<=5)
                          setState(() {
                            result_value+=if_never[questionNumber];
                            questionNumber++;
                          });
                      },
                    ),
                  ),
                )

              ])),

    );
  }
}