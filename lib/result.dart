import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetCallback;

  Result(this.resultScore, this.resetCallback);

  String get resultString {
    if (resultScore == 3) {
      return "You're the winner";
    } else {
      return "Total score $resultScore";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultString,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: resetCallback, child: Text("Reset"))
        ],
      ),
    );
  }
}
