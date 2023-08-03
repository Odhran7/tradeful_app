import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tradeful_app/widgets/onboardingIconWidget.dart';
import '../../utils/Dimensions.dart';
import '../../utils/colors.dart';
import '../../widgets/appBarOnboardingWidget.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';
import 'onboardingHomeownerTwoPage.dart';
import 'onboardingTradesPersonTwoPage.dart';

class OnboardingOnePage extends StatelessWidget {
  const OnboardingOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.textColor,
        appBar: AppBarOnboardingWidget(text: "Onboarding 1 of 3"),
        body: _onboardingOneBody());
  }
}

class _onboardingOneBody extends StatelessWidget {
  const _onboardingOneBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: Dimensions.height100),
          width: double.infinity,
          child: Column(
            children: [
              BigText(
                text: "Select A Role",
                size: 50,
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 6,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 125,
                          height: 125,
                          child: Image.asset(
                            "assets/images/tradespersonOnboardingOne.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 6,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 125,
                          height: 125,
                          child: Image.asset(
                            "assets/images/homeownerOnboardingOne.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(() => OnboardingHomeOwnerTwoPage());
              },
              child: OnbaordingIconWidget(
                  mainTitle: "I need help",
                  subtitle: "I am looking for a service",
                  svgPath: "assets/images/customer.svg"),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => OnboardingTradesPersonTwoPage());
              },
              child: OnbaordingIconWidget(
                  mainTitle: "I can help",
                  subtitle: "I am looking to fix issues",
                  svgPath: "assets/images/tradesperson.svg"),
            ),
          ],
        ),
      ],
    );
  }
}
