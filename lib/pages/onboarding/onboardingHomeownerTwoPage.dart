import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeful_app/widgets/appBarOnboardingWidget.dart';

import '../../utils/Dimensions.dart';
import '../../utils/colors.dart';
import '../../widgets/FormEntryWidget.dart';
import '../../widgets/big_text.dart';

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
    return SafeArea(
      child: Scaffold(
        appBar: AppBarOnboardingWidget(text: "Onboarding 2 of 3"),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            _topImage(),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        _ssoWidget(),
                        FormEntryWidget(text: "Name"),
                        const SizedBox(height: 15),
                        FormEntryWidget(text: "Email"),
                        const SizedBox(height: 15),
                        FormEntryWidget(text: "Phone Number"),
                        const SizedBox(height: 15),
                        FormEntryWidget(text: "Password"),
                        const SizedBox(height: 15),
                        FormEntryWidget(text: "Confirm Password"),
                        const SizedBox(height: 15),
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
                            Text(
                              'I am a commercial entity (priority)',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                        const SizedBox(height: 35),
                        GestureDetector(
                          onTap: () {},
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
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _topImage extends StatelessWidget {
  const _topImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: Dimensions.width30,
          right: Dimensions.width30,
          top: Dimensions.height30,
          bottom: Dimensions.height30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      width: 250,
      height: 225,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
              'assets/images/homeownerOnboardingOne.jpeg',
              fit: BoxFit.cover)),
    );
  }
}

class _ssoWidget extends StatelessWidget {
  const _ssoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
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
              'assets/images/google.png',
              colorBlendMode: BlendMode.saturation,
            ),
          ),
        ),
        const SizedBox(width: 50),
        GestureDetector(
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
              'assets/images/facebook.png',
              colorBlendMode: BlendMode.saturation,
            ),
          ),
        ),
        const SizedBox(width: 50),
        GestureDetector(
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
              'assets/images/apple.png',
              colorBlendMode: BlendMode.saturation,
            ),
          ),
        ),
      ],
    );
  }
}
