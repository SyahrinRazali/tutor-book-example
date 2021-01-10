import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:listview/components/tutor_details.dart';

import '../constants.dart';

class TutorImageAndDetails extends StatelessWidget {
  const TutorImageAndDetails({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.5,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    //Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: TutorDetail(),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.6,
              width: size.width * 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.29))
                  ],
                  image: DecorationImage(
                    alignment: Alignment.bottomLeft,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/tutor_1.jpg'),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
