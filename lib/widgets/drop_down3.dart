import 'package:flutter/material.dart';

class DropDown3 extends StatefulWidget {
  @override
  _DropDown3State createState() => _DropDown3State();
}

class Subject {
  int id;
  String name;

  Subject(this.id, this.name);

  static List<Subject> getSubjects() {
    return <Subject>[
      Subject(1, 'Nationallity'),
      Subject(2, 'Malaysia'),
      Subject(3, 'Singapore'),
      Subject(4, 'Japan'),
      Subject(5, 'Australia'),
      Subject(6, 'United State'),
      Subject(7, 'France'),
    ];
  }
}

class _DropDown3State extends State<DropDown3> {
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
        Text('Originally from', style: TextStyle(fontWeight: FontWeight.bold)),
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
