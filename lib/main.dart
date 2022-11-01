import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }

}

class MyAppState extends State<MyApp> {

  var questionIndex = 0;
  var questions = [
    "What's your favorite color?",
    "What's your favorite animal?",
    "What's your name?"
  ];

  void answerQuestion() {
    setState(() {
      if (questionIndex<questions.length-1) {
        questionIndex++;
      } else {
        questionIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Daniel\'s App"), centerTitle: true),
        body: Center(
          child: Column(
            children: [
              Text(questions.elementAt(questionIndex),textScaleFactor: 2,),
              ElevatedButton(
                child: Text("Next"),
                onPressed: answerQuestion,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
