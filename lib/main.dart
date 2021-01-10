import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listview/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pickiddo',
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          primaryColor: Color(0xff05274C),
          accentColor: Color(0xff1D97B2)),
      home: HomeScreen(),
    );
  }
}
