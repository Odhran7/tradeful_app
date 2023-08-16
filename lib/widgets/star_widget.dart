import 'package:flutter/material.dart';
import 'package:tradeful_app/widgets/small_text.dart';

class StarRowWidget extends StatelessWidget {
  final double size;
  final String text;

  StarRowWidget({Key? key, this.size = 16.0, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SmallText(text: text, bold: true),
        ...List.generate(
            5,
            (index) => Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(Icons.star, color: Colors.yellow, size: size),
                ))
      ],
    );
  }
}
