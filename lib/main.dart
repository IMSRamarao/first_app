import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questiontext': 'what\'s is your favorite game',
      'answers': [
        {'text': 'cricket', 'score': 8},
        {'text': 'basketball', 'score': 10},
        {'text': 'foodball', 'score': 5},
        {'text': 'batmunton', 'score': 2}
      ],
    },
    {
      'questiontext': 'what\'s is your favorite animal',
      'answers': [
        {'text': 'Lion', 'score': 5},
        {'text': 'Eleplant', 'score': 2},
        {'text': 'peacock', 'score': 7},
        {'text': 'dog', 'score': 10}
      ],
    },
    {
      'questiontext': 'who\'s is your advisor',
      'answers': [
        {'text': 'Madhu', 'score': 5},
        {'text': 'Ramu', 'score': 8},
        {'text': 'Raja', 'score': 10},
        {'text': 'Max', 'score': 2}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetMethod(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  } 

  void _answerQuestion(int score) {
      _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print("we have more questions");
    } else {
      print('No more questions');
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Madhu'];
    // dummy.add('Ram');
    // print(dummy);
    // dummy = [];
    // questions = []; it will not because questions is a const varaiable
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetMethod,),
      ),
    );
  }
}
