import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:udemy_quizapp/question_screen.dart';

import 'home_page.dart';


class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
  return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen  = MyHomePage(SwitchScreen);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void SwitchScreen(){
    setState(() {
      Widget activeScreen = QuestionScreen() ;
    });
  }
@override
Widget build(context){
  return MaterialApp(
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: activeScreen,
  );
}
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<MyHomePage>('activeScreen', activeScreen));
  }
}