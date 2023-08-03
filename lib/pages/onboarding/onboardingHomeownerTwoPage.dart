import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeful_app/widgets/appBarOnboardingWidget.dart';

class OnboardingHomeOwnerTwoPage extends StatefulWidget {
  const OnboardingHomeOwnerTwoPage({super.key});

  @override
  State<OnboardingHomeOwnerTwoPage> createState() => _OnboardingHomeOwnerTwoPageState();
}

class _OnboardingHomeOwnerTwoPageState extends State<OnboardingHomeOwnerTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOnboardingWidget(text: "Onboarding 2 of 3"),
      body: Container(),
    );
  }
}