import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectDate extends StatefulWidget {
  @override
  _SelectDateState createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Row(
        children: <Widget>[
          SizedBox(
            height: 50,
            width: 250,
            child: CupertinoDatePicker(
              initialDateTime: _dateTime,
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (dateTime) {
                print(dateTime);
                setState(() {
                  _dateTime = dateTime;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
