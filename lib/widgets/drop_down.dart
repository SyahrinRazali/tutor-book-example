import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class Subject {
  int id;
  String name;

  Subject(this.id, this.name);

  static List<Subject> getSubjects() {
    return <Subject>[
      Subject(1, 'Subject'),
      Subject(2, 'English'),
      Subject(3, 'Math'),
      Subject(4, 'Science'),
      Subject(5, 'Biology'),
      Subject(6, 'Sejarah'),
    ];
  }
}

class _DropDownState extends State<DropDown> {
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
        Text(
          'Tutor teach',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
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
