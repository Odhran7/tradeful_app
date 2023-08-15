import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tradeful_app/utils/Dimensions.dart';
import 'package:tradeful_app/widgets/big_text.dart';

import '../utils/colors.dart';

class SmallButtonWidget extends StatelessWidget {
  final String text;
  StatelessWidget? page;
  final Color buttonColor;
  final Color textColor;
  SmallButtonWidget(
      {super.key,
      required this.text,
      this.page,
      this.buttonColor = const Color(0xff8be381),
      this.textColor = const Color(0xfffefffb),
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(page);
      },
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: buttonColor,
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: BigText(
              text: text,
              color: textColor,
              size: 10,
            ),
          ),
        ),
      ),
    );
  }
}
