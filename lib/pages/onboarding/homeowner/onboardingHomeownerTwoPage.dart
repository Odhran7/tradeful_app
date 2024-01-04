import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradeful_app/pages/onboarding/homeowner/onboardingFinalHomeowner.dart';
import 'package:tradeful_app/pages/onboarding/homeowner/onboardingThreeHomeOwner.dart';
import 'package:tradeful_app/pages/onboarding/tradesperson/onboardingThreePageTradesPerson.dart';
import 'package:tradeful_app/services/auth/authService.dart';
import 'package:tradeful_app/widgets/appBarOnboardingWidget.dart';
import 'package:tradeful_app/widgets/big_button_stateless_widget.dart';
import '../../../utils/Dimensions.dart';
import '../../../utils/colors.dart';
import '../../../widgets/FormEntryWidget.dart';
import '../../../widgets/big_text.dart';
import '../../../widgets/small_text.dart';
import '../../legal/endUserLicenseAgreementPage.dart';
import '../../legal/termsAndConditionsPage.dart';
import 'package:http/http.dart' as http;
import 'package:tradeful_app/services/api_client.dart';

class OnboardingHomeOwnerTwoPage extends StatefulWidget {
  const OnboardingHomeOwnerTwoPage({super.key});

  @override
  State<OnboardingHomeOwnerTwoPage> createState() =>
      _OnboardingHomeOwnerTwoPageState();
}

class _OnboardingHomeOwnerTwoPageState
    extends State<OnboardingHomeOwnerTwoPage> {
  // Controllers for form fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _isChecked1 = false;
  bool _isChecked2 = false;

  // Auth Service
  final AuthService _authService = AuthService(
    apiClient: ApiClient(
      httpClient: http.Client(),
    ),
  );

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _handleSignUp() async {
    if (_passwordController.text != _confirmPasswordController.text) {
      print('Passwords do not match');
      return;
    }
    if (!_isChecked2) {
      print('Please agree to the terms and conditions and EULA');
      return;
    }

    Map<String, dynamic> homeownerData = {
      'firstName': _nameController.text,
      'lastName': 'Doe',
      'phoneNumber': '1224567890',
      'address': '123 Main St',
      'email': _emailController.text,
      'password': _passwordController.text,
      'role': 'homeowner',
      'propertyDetails': {
        'type': 'Apartment',
        'size': '1200 sqft',
        'location': '123 Main St, Cityville',
        'isBusiness': _isChecked1,
      }
    };

    try {
      final response = await _authService.registerHomeowner(homeownerData);
      print('Registration successful: $response');
      // Navigate to next page on successful registration
      Get.to(() => OnboardingThreeHomeOwnerPage());
    } catch (error) {
      print('Registration failed: $error');
      // Handle error here (e.g., show a dialog or a toast)
    }
  }

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
          FormEntryWidget(controller: _nameController, text: "Name", icon: Icons.account_circle_rounded),
          const SizedBox(height: 15),
          FormEntryWidget(controller: _emailController, text: "Email", icon: Icons.email_outlined),
          const SizedBox(height: 15),
          FormEntryWidget(controller: _passwordController, text: "Password", icon: Icons.lock),
          const SizedBox(height: 15),
          FormEntryWidget(controller: _confirmPasswordController, text: "Confirm Password", icon: Icons.lock),
          const SizedBox(height: 15),
          Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked1,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked1 = value!;
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
                        value: _isChecked2,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked2 = value!;
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
          BigButtonNext(text: "Sign Up", onPressed: _handleSignUp),
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

class BigButtonNext extends StatelessWidget {
  final String text;
  final bool shadow;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed;
  const BigButtonNext(
      {super.key,
      required this.text,
      required this.onPressed,
      this.shadow = false,
      this.buttonColor = const Color(0xff8be381),
      this.textColor = const Color(0xfffefffb)});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: buttonColor,
          boxShadow: shadow
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ]
              : [],
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: BigText(
              text: text,
              color: textColor,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
