import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class BigText extends StatelessWidget {

  final String text;
  Color? color;
  double size;
  TextOverflow overflow;

  BigText(
      {super.key,
      required this.text,
      this.color = const Color(0xfffefffb),
      this.overflow = TextOverflow.ellipsis,
      this.size = 0});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      // maxLines: 1,
      // overflow: overflow,
      style: TextStyle(
        color: color,
        fontFamily: 'Salma Pro',
        fontSize: size == 0 ? 20 : size,
      ),
    );
  }
}
