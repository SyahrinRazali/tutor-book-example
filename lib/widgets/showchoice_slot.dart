import 'package:flutter/material.dart';

class ShowChoiceChip extends StatefulWidget {
  @override
  _ShowChoiceChipState createState() => _ShowChoiceChipState();
}

class _ShowChoiceChipState extends State<ShowChoiceChip> {
  int _value = 0;
  // String slot;
  // int selectNumber;

  Widget _showChoiceSlot(String slot, int selectNumber) {
    return ChoiceChip(
      label: Text(slot),
      selected: this._value == selectNumber,
      onSelected: (bool selected) {
        print(slot);
        setState(() {
          if (selected) {
            this._value = selectNumber;
          } else {
            this._value = 0;
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 2.0,
      children: <Widget>[
        _showChoiceSlot('10:00am - 11:00am', 1),
        _showChoiceSlot('11:00am - 12:00pm', 2),
        _showChoiceSlot(' 1:00pm -  2:00pm', 3),
        _showChoiceSlot(' 2:00pm -  3:00pm', 4),
      ],
    );
  }
}
