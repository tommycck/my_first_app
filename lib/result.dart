import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText =
        "You have finished.\n Your score is : " + resultScore.toString();
    /*
    if (resultScore <= 8) {
      resultText = "You are awesome and innocent!";
    } else if (resultScore <= 12) {
      resultText = "Pretty likeable!";
    } else if (resultScore <= 16) {
      resultText = "You are ... strange?!";
    } else {
      resultText = "You are so bad!";
    }
    */
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
