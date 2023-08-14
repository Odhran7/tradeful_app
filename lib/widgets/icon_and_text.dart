import 'package:flutter/material.dart';
import 'package:tradeful_app/widgets/small_text.dart';
import '../utils/dimensions.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final double size;
  const IconAndTextWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.iconColor,
    this.size = 12
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: 28,
        ),
        SizedBox(width: 5),
        SmallText(text: text, size: size,),
        SizedBox(width: 5),
      ],
    );
  }
}
