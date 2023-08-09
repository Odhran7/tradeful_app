import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradeful_app/pages/onboarding/homeowner/reivew_onboarding_homeowner_page.dart';
import 'package:tradeful_app/pages/onboarding/tradesperson/reivew_onboarding_tradesmen_page.dart';
import 'package:tradeful_app/utils/colors.dart';
import 'package:tradeful_app/widgets/big_button_stateless_widget.dart';

import '../../../utils/Dimensions.dart';
import '../../../widgets/appBarOnboardingWidget.dart';
import '../../../widgets/big_text.dart';
import '../../../widgets/country_code_selector_widget.dart';
import '../../../widgets/small_text.dart';

class OTPVerificationTradesPersonPage extends StatefulWidget {
  const OTPVerificationTradesPersonPage({Key? key}) : super(key: key);

  @override
  State<OTPVerificationTradesPersonPage> createState() =>
      _MyOTPVerificationomeOwnerPageState();
}

class _MyOTPVerificationomeOwnerPageState
    extends State<OTPVerificationTradesPersonPage> {
  TextEditingController countryController = TextEditingController();

  @override
  void initState() {
    countryController.text = "+353";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOnboardingWidget(text: "Onboarding: Verify"),
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width30, right: Dimensions.width30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/images/otp_verification.jpeg',
                    width: Dimensions.screenWidth,
                    height: Dimensions.screenHeight / 3,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              BigText(text: "Phone Verification", size: 22, bold: true),
              SizedBox(height: 10),
              BigText(
                text: "We need to verify your phone number first!",
                size: 16,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 100,
                      child: CountryCodeWidget(),
                    ),
                    SmallText(text: "|", size: 33),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone",
                          hintStyle: TextStyle(
                              color: AppColors.mainColor,
                              fontFamily: "Salma Pro",
                              height: 1.2)),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BigButtonWidget(
                  text: "Send Code", page: ReviewOnboardingTradesMenPage()),
            ],
          ),
        ),
      ),
    );
  }
}
