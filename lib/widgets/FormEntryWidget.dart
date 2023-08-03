import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'big_text.dart';

class FormEntryWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  Color? color;
  FormEntryWidget(
      {super.key, required this.text, this.color = const Color(0xffa6a6a6), required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          color: AppColors.mainGray,
          size: 20,
        ),
        const SizedBox(height: 15),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color,
          ),
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                icon,
                color: Colors.white,
              ),
              hintText: text,
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
