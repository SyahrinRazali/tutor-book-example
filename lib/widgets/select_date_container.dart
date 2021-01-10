import 'package:flutter/material.dart';

import '../constants.dart';

class SelectDateContainer extends StatelessWidget {
  const SelectDateContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding, horizontal: kDefaultPadding),
              child: Text(
                "Select date :",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: kTextColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
