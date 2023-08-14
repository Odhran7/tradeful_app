import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tradeful_app/widgets/big_text.dart';

import '../utils/colors.dart';

class BigButtonStatefulWidget extends StatelessWidget {
  final String text;
  final StatefulWidget page; 
  const BigButtonStatefulWidget({super.key, required this.text, required this.page});

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
