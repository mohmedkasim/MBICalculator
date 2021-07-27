import 'package:flutter/material.dart';

import 'constents.dart';

class IconContent extends StatelessWidget {
  final text;
  final icon;

  const IconContent({Key key, this.text, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
            icon,
            size: 80.0
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(text, style: kLabelTextStyle)
      ],
    );
  }
}