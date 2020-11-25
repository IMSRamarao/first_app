import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPharse {
    String resultString;
    if (resultScore >= 25) {
      return resultString = 'You are Good and Inocient, Daring and Dashing';
    } else if (resultScore >= 20) {
      return resultString = 'You are Likable Person!';
    } else if (resultScore >= 10) {
      return resultString = 'You are ..... Strange!';
    } else {
      return resultString = 'You are Bad!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPharse,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
