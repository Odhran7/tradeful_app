import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeful_app/widgets/appBarOnboardingWidget.dart';

class OnboardingFinalTradesPersonPage extends StatelessWidget {
  const OnboardingFinalTradesPersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOnboardingWidget(text: "Tradesperson 3 of 3"),
    );
  }
}