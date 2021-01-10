import 'package:flutter/material.dart';

import '../constants.dart';

class TitleAndOrigin extends StatelessWidget {
  const TitleAndOrigin({
    Key key,
    this.name,
    this.country,
  }) : super(key: key);

  final String name, country;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "$name\n\n".toUpperCase(),
              style: Theme.of(context).textTheme.headline5.copyWith(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "Origin :  $country",
              style: Theme.of(context).textTheme.bodyText2.copyWith(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
