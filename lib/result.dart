import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText =
        "You have finished.\n Your score is : " + resultScore.toString();
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text("Restart Quiz"),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
