import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tradeful_app/widgets/onboardingIconWidget.dart';
import '../../utils/Dimensions.dart';
import '../../utils/colors.dart';
import '../../widgets/appBarOnboardingWidget.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';

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
                text: "Step 1 of 3",
                size: 40,
              ),
              BigText(
                text: "Select A Role",
                size: 50,
              ),
            ],
          ),
        ),
        Column(
          children: [
            OnbaordingIconWidget(
                mainTitle: "I need help",
                subtitle: "I am looking for a service",
                svgPath: "assets/images/customer.svg"),
            OnbaordingIconWidget(
                mainTitle: "I can help",
                subtitle: "I am looking to fix issues",
                svgPath: "assets/images/tradesperson.svg"),
          ],
        ),
      ],
    );
  }
}
