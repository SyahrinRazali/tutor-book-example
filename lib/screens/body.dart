import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:listview/components/image_and_details.dart';
import 'package:listview/components/select_date.dart';
//import 'package:listview/components/tutor_details.dart';
import 'package:listview/constants.dart';
import 'package:listview/screens/home_screen.dart';
import 'package:listview/widgets/book_dialog.dart';
import 'package:listview/widgets/select_date_container.dart';
import 'package:listview/widgets/showchoice_slot.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          TutorImageAndDetails(size: size),
          SelectDateContainer(),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 2.5, vertical: kDefaultPadding),
              child: SelectDate(),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                height: 70,
                //color: Colors.red,
                child: Row(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        //color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: kDefaultPadding,
                              horizontal: kDefaultPadding),
                          child: Text(
                            "Select Slot :",
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(color: kTextColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: kDefaultPadding * 0.5, horizontal: kDefaultPadding),
            height: 150,
            //color: Colors.red,
            child: Wrap(
              spacing: 8.0,
              children: <Widget>[
                ShowChoiceChip(),
              ],
            ),
          ),
          BookAlertDialog(),
        ],
      ),
    );
  }
}
