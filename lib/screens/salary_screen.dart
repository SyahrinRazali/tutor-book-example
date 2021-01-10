import 'package:flutter/material.dart';

class SalaryTab extends StatefulWidget {
  @override
  _SalaryTabState createState() => _SalaryTabState();
}

class _SalaryTabState extends State<SalaryTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Container(
        height: 80.0,
        width: 80.0,
        color: Colors.blueAccent,
      )),
    );
  }
}
