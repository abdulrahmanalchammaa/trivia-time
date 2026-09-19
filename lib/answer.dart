import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xA3EF0C0C),
          padding: EdgeInsets.all(20.0),
        ),
        onPressed: selectHandler,
        child: Text(answerText, style: TextStyle(fontSize: 20, color: Colors.white)),
      ),
    );
  }
}
