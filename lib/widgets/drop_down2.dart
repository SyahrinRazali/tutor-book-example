import 'package:flutter/material.dart';

class DropDown2 extends StatefulWidget {
  @override
  _DropDown2State createState() => _DropDown2State();
}

class Subject {
  int id;
  String name;

  Subject(this.id, this.name);

  static List<Subject> getSubjects() {
    return <Subject>[
      Subject(1, 'Grade'),
      Subject(2, 'Grade 1'),
      Subject(3, 'Grade 2'),
      Subject(4, 'Grade 3'),
      Subject(5, 'Grade 4'),
      Subject(6, 'Grade 5'),
      Subject(7, 'Grade 6'),
    ];
  }
}

class _DropDown2State extends State<DropDown2> {
  List<Subject> _subjects = Subject.getSubjects();
  List<DropdownMenuItem<Subject>> _dropdownMenuItem;
  Subject _selectedSubject;

  @override
  void initState() {
    _dropdownMenuItem = buildDropDownMenuItem(_subjects);
    _selectedSubject = _dropdownMenuItem[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Subject>> buildDropDownMenuItem(List subjects) {
    List<DropdownMenuItem<Subject>> items = List();
    for (Subject subject in subjects) {
      items.add(
        DropdownMenuItem(
          value: subject,
          child: Text(subject.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Subject selectedSubject) {
    setState(() {
      _selectedSubject = selectedSubject;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Your Grade', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 0.0),
        DropdownButton(
          value: _selectedSubject,
          items: _dropdownMenuItem,
          onChanged: onChangeDropdownItem,
        ),
      ],
    );
  }
}
