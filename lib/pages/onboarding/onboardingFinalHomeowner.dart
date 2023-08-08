import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeful_app/widgets/appBarOnboardingWidget.dart';

class OnboardingFinalHomeOwnerPage extends StatelessWidget {
  const OnboardingFinalHomeOwnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOnboardingWidget(text: "Homeowner 3 of 3"),
      body: Container(),
    );
  }
}