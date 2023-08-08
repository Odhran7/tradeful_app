import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tradeful_app/widgets/alternating_text_widget.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text.dart';
import 'small_text.dart';

class AppColumnTradesMenWidget extends StatelessWidget {
  final String tradeType;
  final String svgIconPath;
  final String numType;
  final String numRatings;
  final List<String> jobTypes;

  const AppColumnTradesMenWidget({
    super.key,
    required this.tradeType,
    required this.svgIconPath,
    required this.numType,
    required this.numRatings,
    required this.jobTypes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: Dimensions.width15,
          right: Dimensions.height15,
          bottom: Dimensions.height30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width15, right: Dimensions.width15),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: SvgPicture.asset(
                    svgIconPath,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              BigText(
                text: tradeType,
                size: 26,
                color: AppColors.mainColor,
              ),
            ],
          ),
          SizedBox(
            height: Dimensions.height15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmallText(text: "Jobs Requested: ", size: 14, bold: true),
              Container(
                  width: 100,
                  child: AlternatingTextWidget(
                    textList: jobTypes,
                    seconds: 2,
                    size: 13,
                  )),
              SizedBox(width: Dimensions.width15),
              SmallText(text: "Jobs Done", size: 14, bold: true),
              SmallText(text: numType, size: 13),
            ],
          ),
          SizedBox(
            height: Dimensions.height15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconAndTextWidget(
                icon: Icons.reviews,
                text: numRatings + " Reviews",
                iconColor: AppColors.mainColor,
              ),
            ],
          ),
          SizedBox(
            height: Dimensions.height15,
          ),

        ],
      ),
    );
  }
}
