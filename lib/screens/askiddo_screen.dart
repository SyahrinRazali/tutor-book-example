import 'package:flutter/material.dart';

class AskiddoTab extends StatefulWidget {
  @override
  _AskiddoTabState createState() => _AskiddoTabState();
}

class _AskiddoTabState extends State<AskiddoTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Container(
        height: 80.0,
        width: 80.0,
        color: Colors.redAccent,
      )),
    );
  }
}
