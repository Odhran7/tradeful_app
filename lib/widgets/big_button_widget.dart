import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tradeful_app/widgets/big_text.dart';

import '../utils/colors.dart';

class BigButtonWidget extends StatelessWidget {
  final String text;
  final StatelessWidget page; // Updated type
  const BigButtonWidget({super.key, required this.text, required this.page});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(page); // Navigate to the page without calling as a function
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.mainGray,
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
