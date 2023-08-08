import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeful_app/pages/onboarding/reivew_onboarding_homeowner_page.dart';
import 'package:tradeful_app/utils/dimensions.dart';
import 'package:tradeful_app/widgets/appBarOnboardingWidget.dart';
import 'package:tradeful_app/widgets/app_column.dart';
import 'package:tradeful_app/widgets/big_button_widget.dart';
import 'package:tradeful_app/widgets/big_text.dart';

import '../../models/tradetypeModel.dart';
import '../../utils/colors.dart';
import '../../widgets/app_column_homeowner_widget.dart';
import '../../widgets/app_column_tradesmen_widget.dart';

class OnboardingFinalHomeOwnerPage extends StatelessWidget {
  const OnboardingFinalHomeOwnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Tradetype> tradeTypes = [
      Tradetype(
        'Electrician',
        'assets/images/electrician_icon.svg',
        '105',
        '200',
        ['Install fixtures', 'Broken Freezer', 'Install heater'],
      ),
      Tradetype(
        'Plumber',
        'assets/images/plumber_icon.svg',
        '56',
        '153',
        ['Leak', 'Clogged Drain', 'Install Fixtures'],
      ),
      Tradetype(
        'Carpenter',
        'assets/images/carpenter_icon.svg',
        '48',
        '100',
        ['Custom build', 'Repairs', 'Internal Fittings'],
      ),
      Tradetype(
        'Welder',
        'assets/images/welder_icon.svg',
        '12',
        '255',
        ['Gates', 'Farm yards', 'Commercial'],
      ),
      Tradetype(
        'Photographer',
        'assets/images/photographer_icon.svg',
        '23',
        '244',
        ['Wedding', 'Portrait', 'Commercial'],
      ),
    ];

    return Scaffold(
      appBar: AppBarOnboardingWidget(text: "Homeowner 3 of 3"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BigText(text: "I'm looking for: ", size: 30, bold: true),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height15, bottom: Dimensions.height15),
              margin: EdgeInsets.only(bottom: Dimensions.height60, top: Dimensions.height60, left: Dimensions.width30, right: Dimensions.width30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.iconWhite,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: tradeTypes.length,
                  itemBuilder: (context, position) {
                    Tradetype trade = tradeTypes[position];
                    return GestureDetector(
                        onTap: () {
                          // TODO
                        },
                        child: Container(
                            margin: EdgeInsets.only(
                                left: Dimensions.width15,
                                right: Dimensions.width15,
                                bottom: Dimensions.height30),
                            child: Container(
                              padding: EdgeInsets.only(top: Dimensions.height15, bottom: Dimensions.height15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black, width: 1.0)
                              ),
                              child: AppColumnHomeOwnerWidget(
                                tradeType: trade.tradeType,
                                svgIconPath: trade.svgIconPath,
                                numType: trade.numType,
                                numRatings: trade.numRatings,
                                jobTypes: trade.jobTypes,
                              ),
                            )));
                  },
                )),
                BigButtonWidget(text: "Review", page: ReviewOnboardingHomeOwnerPage())
          ],
        ),
      ),
    );
  }
}
