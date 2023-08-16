import 'package:flutter/material.dart';

import '../../big_text.dart';

class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(context, '5', 'Bounties'),
          buildDivider(),
          buildButton(context, '35', 'Reviews'),
          buildDivider(),
          buildButton(context, '50', 'Orders'),
        ],
      );
  Widget buildDivider() => Container(
        height: 24,
        child: VerticalDivider(),
      );

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            BigText(
              text: value,
            ),
            SizedBox(height: 2),
            BigText(
              text: text,
              bold: true
            ),
          ],
        ),
      );
}