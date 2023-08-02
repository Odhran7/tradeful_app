import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tradeful_app/widgets/big_text.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';

class MainAppPage extends StatelessWidget {
  const MainAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset('assets/images/logoJpg.jpg'),
            margin: EdgeInsets.only(
                top: Dimensions.width30,
                left: Dimensions.width30,
                right: Dimensions.width30,
                bottom: Dimensions.height30),
          ),
          // BigText("Tradeful"),
          // Te
        ],

      ),
      bottomNavigationBar: Container(
        height: 100,
        margin: EdgeInsets.only(left: Dimensions.width30, right: Dimensions.width30, bottom: Dimensions.height60),
        padding: EdgeInsets.only(
            top: Dimensions.height15,
            bottom: Dimensions.height15,
            left: Dimensions.width15,
            right: Dimensions.width15),
        child: Center(child: BigText(text: "Get Started",)),
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
