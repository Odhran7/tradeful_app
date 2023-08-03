import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/appBarOnboardingWidget.dart';

class OnboardingTradesPersonTwoPage extends StatefulWidget {
  const OnboardingTradesPersonTwoPage({super.key});

  @override
  State<OnboardingTradesPersonTwoPage> createState() => _OnboardingTradesPersonTwoPageState();
}

class _OnboardingTradesPersonTwoPageState extends State<OnboardingTradesPersonTwoPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOnboardingWidget(text: "Onboarding 2 of 3"),
      body: Container(),
    );
  }
}