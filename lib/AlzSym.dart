import 'package:flutter/material.dart';
import 'package:gerie/AlzSymRes.dart';
class AlzSym extends StatefulWidget{
  static const String id="AlzSym";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AlzSymState();
  }


}
class AlzSymState extends State<AlzSym>{
  List<String> questions=[
    'How often do you feel confused regarding place or time ?',
    'Do you feel difficulty in reading or writing ,which was absent before?',
    'How often do you feel you’ve withdrawn from social activities which you used to gladly be a part of earlier?',
    'Do you have trouble understanding simple visual information or any sort of information?',
    'Do you feel abrupt changes in your mood or behavior?',
    'Do you feel doing the simple chores which you used to do before often, has become a huge task now-a-days?',
    'Do you experience problems with finding things which has been placed somewhere by yourself?'
  ];
  List<int> if_always=[15,15,15,18,15,15,18];
  List<int> if_Frequently=[12,10,10,8,10,10,8];
  List<int> if_Sometimes=[3,5,2,7,5,5,4];
  List<int> if_never=[0,0,0,0,0,0,0];
  static int alzvalue=0;
  int resultvalue=0;

  int questionNumber=0;
  @override
  Widget build(BuildContext context) {
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
                        if(questionNumber>=6){
                          resultvalue+=if_always[questionNumber];
                          alzvalue=resultvalue;
                          Navigator.pushNamed(context,AlzSymRes.id);
                        }
                        else if(questionNumber<=5)
                        setState(() {
                          resultvalue+=if_always[questionNumber];
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
                        if(questionNumber>=6){

                          resultvalue+=if_Sometimes[questionNumber];
                          alzvalue=resultvalue;
                          Navigator.pushNamed(context,AlzSymRes.id);
                        }
                        else if(questionNumber<=5)
                          setState(() {
                            resultvalue+=if_Sometimes[questionNumber];
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
                      onPressed: (){
                        if(questionNumber>=6){

                        resultvalue+=if_Frequently[questionNumber];
                        alzvalue=resultvalue;
                        Navigator.pushNamed(context,AlzSymRes.id);
                        }
                        else if(questionNumber<=5)
                        setState(() {
                        resultvalue+=if_Frequently[questionNumber];
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
                        if(questionNumber>=6){
                          resultvalue+=if_never [questionNumber];
                          alzvalue=resultvalue;
                          Navigator.pushNamed(context,AlzSymRes.id);
                        }
                        else if(questionNumber<=5)
                          setState(() {
                            resultvalue+=if_never[questionNumber];
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