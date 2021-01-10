import 'package:flutter/material.dart';

class QuizTab extends StatefulWidget {
  @override
  _QuizTabState createState() => _QuizTabState();
}

class _QuizTabState extends State<QuizTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Container(
        height: 80.0,
        width: 80.0,
        color: Colors.amber,
      )),
    );
  }
}
