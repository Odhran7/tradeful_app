import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradeful_app/widgets/big_text.dart';

import '../utils/colors.dart';

class BigButtonWidget extends StatelessWidget {
  final String text;
  final StatelessWidget page;
  final bool shadow;
  const BigButtonWidget({super.key, required this.text, required this.page, this.shadow = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(page);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.buttonColor,
          boxShadow: shadow ? [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5, 
              offset: Offset(0, 3), 
            ),
          ] : [],
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: BigText(
              text: text,
              color: AppColors.textColor,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
