import 'package:flutter/material.dart';
import 'package:tradeful_app/utils/dimensions.dart';
import 'package:tradeful_app/widgets/small_text.dart';

import '../utils/colors.dart';

class MainAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String profileIcon;
  const MainAppBarWidget({Key? key, required this.profileIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the status bar height to adjust the size properly
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.only(
            left: Dimensions.width30, right: Dimensions.width30),
        height: 100 + statusBarHeight,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              spreadRadius: 1, // Spread radius
              blurRadius: 5, // Blur radius
              offset: Offset(0, 3), // Shadow position
            ),
          ],
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.textColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child:
                      Image.asset(profileIcon, fit: BoxFit.contain, height: 62),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SmallText(
                            text: "Current Location",
                            color: AppColors.textColor,
                            size: 14),
                        Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.textColor,
                          size: 24,
                        ),
                      ],
                    ),
                    SizedBox(height: 2),
                    SmallText(
                        text: "Dublin, Ireland",
                        color: AppColors.textColor,
                        bold: true,
                        size: 16),
                  ],
                ),
              ),
              Icon(
                Icons.settings,
                color: AppColors.textColor,
                size: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(62 +
      MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
          .padding
          .top); // considering the status bar height
}
