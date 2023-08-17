import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tradeful_app/pages/onboarding/onboardingOnePage.dart';
import 'package:tradeful_app/utils/colors.dart';
import 'package:tradeful_app/widgets/appBarOnboardingWidget.dart';
import 'package:tradeful_app/widgets/big_text.dart';

import '../../utils/Dimensions.dart';
import '../../widgets/small_text.dart';

class OnboardingTitlePage extends StatelessWidget {
  const OnboardingTitlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOnboardingWidget(text: "Welcome"),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/onboardingBg.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BigText(text: "Need a repair?", size: 35),
              BigText(text: "Find local tradesmen.", size: 35),
              SizedBox(height: Dimensions.height15),
              SmallText(
                  text: "Welcome to Tradeful. Here is how it works...",
                  size: 20),
            ],
          ))
        ],
      ),
      bottomNavigationBar: Stack(
        children: <Widget>[
          Container(
            height: 180,
            color: Colors.transparent,
          ),
          Positioned(
            bottom: -120,
            right: -100,
            child: Stack(
              alignment: Alignment.center, // Adjust this as needed
              children: [
                SvgPicture.asset("assets/images/blackBlob.svg",
                color: AppColors.buttonColor,
                    height: 300, width: 300),
                GestureDetector(
                  onTap: () {
                    Get.to(() => OnboardingOnePage());
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
