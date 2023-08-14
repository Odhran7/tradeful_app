import 'package:flutter/material.dart';
import 'package:tradeful_app/pages/onboarding/tradesperson/OTP_verification_tradesperson.dart';
import 'package:tradeful_app/utils/Dimensions.dart';
import 'package:tradeful_app/widgets/appBarOnboardingWidget.dart';
import 'package:tradeful_app/widgets/big_button_stateful_widget.dart';
import 'package:tradeful_app/widgets/big_button_stateless_widget.dart';
import 'package:tradeful_app/widgets/big_text.dart';
import 'package:tradeful_app/widgets/google_map_widget.dart';
import '../../../widgets/FormEntryWidget.dart';

class OnboardingThreeTradesPersonPage extends StatelessWidget {
  const OnboardingThreeTradesPersonPage({super.key});

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
            BigButtonStatefulWidget(text: "Next", page: OTPVerificationTradesPersonPage())
          ],
        ),
      ),
    );
  }
}