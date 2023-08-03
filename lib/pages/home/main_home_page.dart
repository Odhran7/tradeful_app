import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tradeful_app/pages/onboarding/onboardingOnePage.dart';
import 'package:tradeful_app/pages/onboarding/onboardingTitlePage.dart';
import 'package:tradeful_app/widgets/alternating_text_widget.dart';
import 'package:tradeful_app/widgets/app_column.dart';
import 'package:tradeful_app/widgets/big_text.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/appBarOnboardingWidget.dart';
import '../../widgets/auto_scroll_widget.dart';
import '../../widgets/small_text.dart';

class MainAppPage extends StatelessWidget {
  const MainAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> textListTrades = [
      "electricians",
      "plumbers",
      "welders",
    ];

    List<String> textListPlaces = [
      "Dublin City",
      "North Dublin",
      "Maynooth",
      "Kildare",
    ];

    List<TradesPerson> tradesPeople = [
      TradesPerson('John Hegarty', 'assets/images/electrician_profile1.jpeg',
          '5', 'Dublin City', '288', 'Electrician'),
      TradesPerson('Jane Mitchell', 'assets/images/plumber_profile1.jpeg', '4',
          'North Dublin', '150', 'Plumber'),
      TradesPerson('Bob Landers', 'assets/images/welder_profile2.jpeg', '4.5',
          'Maynooth', '200', 'Welder'),
      TradesPerson('Shane Kerins', 'assets/images/electrician_profile2.jpeg',
          '5', 'Dublin City', '288', 'Electrician'),
      TradesPerson('Nigel O Keefe', 'assets/images/plumber_profile2.jpg', '4',
          'North Dublin', '150', 'Plumber'),
      TradesPerson('George O\' Leary', 'assets/images/welder_profile1.jpeg',
          '4.5', 'Maynooth', '200', 'Welder'),
    ];

    return Scaffold(
      backgroundColor: AppColors.textColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _logo(),
          _getStartedBody(
              tradesPeople: tradesPeople,
              textListTrades: textListTrades,
              textListPlaces: textListPlaces),
        ],
      ),
      bottomNavigationBar: _getStartedButton(),
    );
  }
}

class _getStartedBody extends StatelessWidget {
  const _getStartedBody({
    super.key,
    required this.tradesPeople,
    required this.textListTrades,
    required this.textListPlaces,
  });

  final List<TradesPerson> tradesPeople;
  final List<String> textListTrades;
  final List<String> textListPlaces;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BigText(
          text: "Our Tradespeople",
          size: 40,
        ),
        SizedBox(height: Dimensions.height15,),
        Container(
            height: 220,
            margin: EdgeInsets.only(
                left: Dimensions.width30,
                right: Dimensions.width30,
                bottom: Dimensions.height30),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.mainColor, width: 2.0),
              borderRadius: BorderRadius.circular(15),
            ),
            child: AutoScrollingListView(
              tradesPeople: tradesPeople,
            )),
        Container(
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width30,
                right: Dimensions.width30),
            margin: EdgeInsets.only(
                left: Dimensions.width30, right: Dimensions.width30),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.mainColor, width: 2.0),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                BigText(text: "Connect with ", size: 25),
                AlternatingTextWidget(
                  textList: textListTrades,
                  seconds: 2,
                ),
                BigText(text: "in", size: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AlternatingTextWidget(
                      textList: textListPlaces,
                      seconds: 4,
                    ),
                    Icon(Icons.location_pin),
                  ],
                )
              ],
            )),
      ],
    );
  }
}

class _logo extends StatelessWidget {
  const _logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      child: Image.asset('assets/images/logoJpg.jpg'),
      margin: EdgeInsets.only(
          top: Dimensions.width30,
          left: Dimensions.width30,
          right: Dimensions.width30,
          bottom: Dimensions.height30),
    );
  }
}

class _getStartedButton extends StatelessWidget {
  const _getStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => OnboardingTitlePage());
      },
      child: Container(
        height: 100,
        margin: EdgeInsets.only(
            left: Dimensions.width30,
            right: Dimensions.width30,
            bottom: Dimensions.height60),
        padding: EdgeInsets.only(
            top: Dimensions.height15,
            bottom: Dimensions.height15,
            left: Dimensions.width15,
            right: Dimensions.width15),
        child: Center(
            child: BigText(
          text: "Get Started",
          color: AppColors.textColor,
        )),
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
