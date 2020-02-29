import 'package:flutter/material.dart';
import 'package:gerie/AlzPermPopUp.dart';
import 'package:gerie/AlzSym.dart';
import 'package:gerie/AlzSymRes.dart';
import 'package:gerie/AlzTestMail.dart';
import 'package:gerie/DepressionResults.dart';
import 'package:gerie/DepressionSym.dart';
import 'package:gerie/MailSuccess.dart';
import 'package:gerie/ParkMailPopUp.dart';
import 'package:gerie/ParkPopUp.dart';
import 'package:gerie/ParkTest2.dart';
import 'package:gerie/ParkTest3.dart';
import 'package:gerie/ParkTest4.dart';
import 'package:gerie/ParkTest5.dart';
import 'package:gerie/ParkTest6.dart';
import 'package:gerie/ParkTest7.dart';
import 'package:gerie/ParkinsonSym.dart';
import 'package:gerie/ParkinsonSymres.dart';
import 'package:gerie/RegisterMail.dart';
import 'package:gerie/RegisterMailSucess.dart';
import 'package:gerie/Welcome_Screen.dart';
import 'package:gerie/Login_Screen.dart';
import 'package:gerie/Registration_Screen.dart';
import 'package:gerie/checkUps.dart';
import 'package:gerie/depressionMail.dart';
import 'package:gerie/parkMail.dart';
import 'package:gerie/parkTest.dart';
void main() => runApp(Geriatic());

class Geriatic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(

    home:WelcomeScreen(),
  routes: {
      WelcomeScreen.id :(context)=>WelcomeScreen(),
    LoginScreen.id:(context)=>LoginScreen(),
    Register.id:(context)=>Register(),
    CheckUp.id:(context)=>CheckUp(),
    DepressionSym.id:(context)=>DepressionSym(),
    DepressionResults.id:(context)=>DepressionResults(),
    AlzSym.id:(context)=>AlzSym(),
    AlzSymRes.id:(context)=>AlzSymRes(),
   ParkinSon.id:(context)=>ParkinSon(),
    ParkinsonSymres.id:(context)=>ParkinsonSymres(),
    AlzPermPopUp.id:(context)=>AlzPermPopUp(),
    AlzTest.id:(context)=>AlzTest(),
    MailSuccess.id:(context)=>MailSuccess(),
    ParkPopUp.id:(context)=>ParkPopUp(),
    parkTest.id:(context)=>parkTest(),
    ParkTest2.id:(context)=>ParkTest2(),
    ParkTest3.id:(context)=>ParkTest3(),
    ParkTest4.id:(context)=>ParkTest4(),
    ParkTest5.id:(context)=>ParkTest5(),
    ParkTest6.id:(context)=>ParkTest6(),
    ParkTest7.id:(context)=>ParkTest7(),
    ParkMailPopUp.id:(context)=>ParkMailPopUp(),
    ParkMail.id:(context)=>ParkMail(),
    DepressionMail.id:(context)=>DepressionMail(),
    RegisterMail.id:(context)=>RegisterMail(),
    RegisterMailSuccess.id:(context)=>RegisterMailSuccess(),

  },);
  }
}