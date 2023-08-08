import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradeful_app/utils/Dimensions.dart';
import 'package:tradeful_app/widgets/appBarOnboardingWidget.dart';
import 'package:tradeful_app/widgets/big_text.dart';
import 'package:tradeful_app/widgets/google_map_widget.dart';

import '../../utils/colors.dart';
import '../../widgets/FormEntryWidget.dart';

class OnboardingThreePage extends StatelessWidget {
  const OnboardingThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOnboardingWidget(text: "Onboarding 2 of 3"),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            BigText(text: "Choose your location", size: 25, bold: true),
            GMap(),
            BigText(text: "Add a phone number", size: 20, bold: true),
            SizedBox(height: Dimensions.height30),
            FormEntryWidget(text: "Phone Number", icon: Icons.phone),
            SizedBox(height: Dimensions.height30),
             GestureDetector(
            onTap: () {
              Get.to(() => OnboardingThreePage());
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
                    text: 'Next',
                    color: AppColors.textColor,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}