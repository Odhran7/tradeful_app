import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradeful_app/pages/onboarding/onboardingThreePage.dart';
import 'package:tradeful_app/widgets/appBarOnboardingWidget.dart';
import '../../utils/Dimensions.dart';
import '../../utils/colors.dart';
import '../../widgets/FormEntryWidget.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';
import '../legal/endUserLicenseAgreementPage.dart';
import '../legal/termsAndConditionsPage.dart';

class OnboardingHomeOwnerTwoPage extends StatefulWidget {
  const OnboardingHomeOwnerTwoPage({super.key});

  @override
  State<OnboardingHomeOwnerTwoPage> createState() =>
      _OnboardingHomeOwnerTwoPageState();
}

class _OnboardingHomeOwnerTwoPageState
    extends State<OnboardingHomeOwnerTwoPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOnboardingWidget(text: "Homeowner 1 of 3"),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          _topImage(),
          _ssoWidget(),
          Expanded(
            child: _formWidget(),
          ),
        ],
      ),
    );
  }

  Widget _formWidget() {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: ListView(
        children: [
          FormEntryWidget(text: "Name", icon: Icons.account_circle_rounded),
          const SizedBox(height: 15),
          FormEntryWidget(text: "Email", icon: Icons.email_outlined),
          const SizedBox(height: 15),
          FormEntryWidget(text: "Password", icon: Icons.lock),
          const SizedBox(height: 15),
          FormEntryWidget(text: "Confirm Password", icon: Icons.lock),
          const SizedBox(height: 15),
          Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                        activeColor: AppColors.mainGray,
                      ),
                      SmallText(
                          text: 'I am a commercial entity (priority)',
                          size: 12),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                        activeColor: AppColors.mainGray,
                      ),
                      SmallText(text: "I agree to the ", size: 12),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => TermsAndConditionsPage());
                        },
                        child: SmallText(
                            text: 'terms and conditions',
                            color: Colors.blue,
                            size: 12),
                      ),
                      SmallText(text: "and ", size: 12),
                      GestureDetector(
                          onTap: () {
                            Get.to(() => EndUserLicenseAgreementPage());
                          },
                          child: SmallText(
                              text: "EULA", color: Colors.blue, size: 12)),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 35),
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
                    text: 'Sign Up',
                    color: AppColors.textColor,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _topImage extends StatelessWidget {
  const _topImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        image: DecorationImage(
          image: AssetImage('assets/images/homeownerOnboardingOne.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _ssoWidget extends StatelessWidget {
  const _ssoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Center(
            child: BigText(
              text: '- Sign Up with -',
              color: AppColors.mainGray,
              size: 20,
              bold: true,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _ssoButton('assets/images/google.png'),
              const SizedBox(width: 40),
              _ssoButton('assets/images/facebook.png'),
              const SizedBox(width: 40),
              _ssoButton('assets/images/apple.png'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _ssoButton(String assetName) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 80,
        height: 80,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white38,
        ),
        child: Image.asset(
          assetName,
          colorBlendMode: BlendMode.saturation,
        ),
      ),
    );
  }
}
