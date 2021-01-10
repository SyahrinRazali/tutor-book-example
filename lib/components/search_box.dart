import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
    this.onChange,
    String image,
  }) : super(key: key);
  final ValueChanged onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 180.0,
      margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.symmetric(
        horizontal: 5.0,
        vertical: 5.0 / 4,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: TextField(
        onChanged: onChange,
        style: TextStyle(color: Theme.of(context).primaryColor),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: " Keyword..",
          hintStyle: TextStyle(color: Colors.black38),
          icon: Icon(Icons.search, color: Theme.of(context).accentColor),
        ),
      ),
    );
  }
}
