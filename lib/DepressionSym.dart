import 'package:flutter/material.dart';
import 'package:gerie/DepressionResults.dart';
class DepressionSym extends StatefulWidget{
  static const String id ="DepressionSym";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DepressionSymState();
  }


}
class DepressionSymState extends State<DepressionSym>{
  List<Widget> scoreKeeper=[];
  List<String> questions=[
   "Are you basically satisfied with your life?",
   "Have you dropped many of your activities and interests?",
   "Do you feel that your life is empty?",
   "Do you often get bored?",
   "Are you in good spirits most of the time?",
   "Are you afraid that something bad is going to happen to you?",
   "Do you feel happy most of the time?",
   "Do you often feel helpless?",
   "Do you prefer to stay at home, rather than going out and doing new things?",
   "Do you feel you have more problems with memory than most?",
   "Do you think it is wonderful to be alive now?",
   "Do you feel pretty worthless the way you are now?",
   "Do you feel full of energy?",
   "Do you feel that your situation is hopeless?",
   "Do you think that most people are better off than you are?",
  ];

  List<int> if_yes=[4,8,8,6,2,8,1,9,6,7,1,9,1,9,8];
  List<int> if_No=[6,2,2,4,8,2,9,1,4,3,9,1,9,1,2];
   int total_points=0;
 static int results_point=0;
  int depressionScale=0;

  int questionNumber=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                'Yes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),

              onPressed: () {
                  if(questionNumber>=14){
                    results_point=total_points;
                    Navigator.pushNamed(context,DepressionResults.id);
                  }
                  else if (questionNumber<=13) {
                    setState(() {
                      total_points += if_yes[questionNumber];
                      questionNumber++;
                    });
                  }


              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'No',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {

                if(questionNumber>=14){
                  results_point=total_points;
                  Navigator.pushNamed(context,DepressionResults.id);
                }
                else if(questionNumber<=13) {
                  setState(() {
                    total_points += if_No[questionNumber];
                    questionNumber++;
                  });
                }



              },
            ),
          ),
        ),

  ])),
    );
  }

}