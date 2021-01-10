import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import 'name_and_country.dart';

class TutorDetail extends StatelessWidget {
  const TutorDetail({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
            padding: EdgeInsets.all(kDefaultPadding / 2),
            height: 140,
            width: 150,
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 15),
                  blurRadius: 22,
                  color: kPrimaryColor.withOpacity(0.22),
                ),
                BoxShadow(
                  offset: Offset(-15, -15),
                  blurRadius: 20,
                  color: Colors.white,
                ),
              ],
            ),
            child: Wrap(
              children: <Widget>[
                TitleAndOrigin(
                  name: "Samantha",
                  country: "Australia",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, top: 15),
                  child: SvgPicture.asset(
                    'assets/icons/aus.svg',
                    height: 30,
                    width: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
