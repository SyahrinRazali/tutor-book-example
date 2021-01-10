import 'package:flutter/material.dart';

class DropDownSp extends StatefulWidget {
  @override
  _DropDownSpState createState() => _DropDownSpState();
}

class Subject {
  int id;
  String name;

  Subject(this.id, this.name);

  static List<Subject> getSubjects() {
    return <Subject>[
      Subject(1, 'Specialties'),
      Subject(2, 'C Language'),
      Subject(3, 'Marketing'),
      Subject(4, 'Music'),
      Subject(5, 'School Teacher'),
      Subject(6, 'Native'),
    ];
  }
}

class _DropDownSpState extends State<DropDownSp> {
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
