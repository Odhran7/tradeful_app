import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tradeful_app/utils/Dimensions.dart';
import 'package:tradeful_app/utils/colors.dart';
import 'package:tradeful_app/widgets/appBarOnboardingWidget.dart';
import 'package:tradeful_app/widgets/big_button_stateless_widget.dart';
import 'package:tradeful_app/widgets/big_text.dart';
import 'package:tradeful_app/widgets/small_text.dart';

import '../../../widgets/small_button_widget.dart';
import '../../app/homeowner/home/homeowner_dashboard.dart';

class ReviewOnboardingHomeOwnerPage extends StatelessWidget {
  const ReviewOnboardingHomeOwnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.textColor,
        appBar: AppBarOnboardingWidget(text: "Review Homeowner"),
        body: Container(
          height: Dimensions.screenHeight * 0.75,
          width: Dimensions.screenWidth,
          margin: EdgeInsets.only(
              top: Dimensions.height100,
              bottom: Dimensions.height100,
              left: Dimensions.width60,
              right: Dimensions.width60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.iconWhite,
          ),
          child: Container(
            padding: EdgeInsets.only(
                top: Dimensions.height100,
                bottom: Dimensions.height30,
                left: Dimensions.width30,
                right: Dimensions.width30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigText(text: "Review Your Details George", size: 35, bold: true),
                SizedBox(
                  height: Dimensions.height30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(120),
                        child: Image.asset(
                          'assets/images/upload_profile_photo.png',
                        ))
                  ],
                ),
                SizedBox(
                  height: Dimensions.height30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [SmallButtonWidget(text: "Upload Photo")],
                ),
                SizedBox(
                  height: Dimensions.height30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(text: "Name: ", size: 22, bold: true),
                    BigText(text: "George O' Leary", size: 18),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(text: "Email: ", size: 22, bold: true),
                    BigText(text: "George@tradeful.com", size: 18),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(text: "Trade Requested: ", size: 22, bold: true),
                    BigText(
                      text: "Electrician",
                      size: 18,
                    ),
                    SvgPicture.asset(
                      'assets/images/electrician_icon.svg',
                      height: Dimensions.height30,
                      width: Dimensions.width30,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(text: "Agreed to T&Cs: ", size: 22, bold: true),
                    BigText(
                      text: "Yes",
                      size: 18,
                      color: AppColors.verifiedGreen,
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimensions.height30,
                ),
                BigButtonWidget(text: "Next", page: HomeOwnerDashboardPage()),
              ],
            ),
          ),
        ));
  }
}
