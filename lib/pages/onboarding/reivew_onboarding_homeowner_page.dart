import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeful_app/widgets/appBarOnboardingWidget.dart';
import 'package:tradeful_app/widgets/big_text.dart';

class ReviewOnboardingHomeOwnerPage extends StatelessWidget {
  const ReviewOnboardingHomeOwnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOnboardingWidget(text: "Review Homeowner"),
      body: Column(
        children: [
          Container(
            child: BigText(text: "Review Your Details", size: 25, bold: true),
          )
        ],
      )
    );
  }
}