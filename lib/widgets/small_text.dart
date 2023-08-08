import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  final bool bold;

  SmallText(
      {super.key,
      this.color = const Color(0xff1c1c1c),
      required this.text,
      this.size = 12,
      this.height = 1.2,
      this.bold = false,
      });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: color,
          fontFamily: 'Salma Pro',
          fontSize: size,
          height: height,
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        ));
  }
}
