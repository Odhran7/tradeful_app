import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tradeful_app/utils/Dimensions.dart';
import 'package:tradeful_app/widgets/big_text.dart';

import '../utils/colors.dart';

class SmallButtonWidget extends StatelessWidget {
  final String text;
  const SmallButtonWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO
      },
      child: Container(
        width: 100,
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
              size: 10,
            ),
          ),
        ),
      ),
    );
  }
}
