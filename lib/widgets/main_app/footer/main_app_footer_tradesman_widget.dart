import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradeful_app/utils/dimensions.dart';

import '../../../utils/colors.dart';

class MainAppFooterTradesmanWidget extends StatefulWidget {
  final bool needsBack;
  final StatelessWidget page;
  MainAppFooterTradesmanWidget({Key? key, this.needsBack = false, required this.page})
      : super(key: key);

  @override
  State<MainAppFooterTradesmanWidget> createState() => _MainAppFooterTradesmanWidgetState();
}

class _MainAppFooterTradesmanWidgetState extends State<MainAppFooterTradesmanWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // Allow overflow
      children: [
        Container(
          height: 75,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.textColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.home_filled,
                          color: AppColors.buttonColor, size: 38),
                      Icon(Icons.dashboard,
                          color: AppColors.buttonColor, size: 42),
                      Icon(Icons.notifications,
                          color: AppColors.buttonColor, size: 42),
                      Icon(Icons.message_outlined,
                          color: AppColors.buttonColor, size: 42),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 52.5,
          right: 20,
          child: FloatingActionButton(
            shape: CircleBorder(),
            backgroundColor: Colors.white,
            onPressed: () {
              Get.to(() => widget.page);
            },
            child: widget.needsBack
                ? Icon(Icons.arrow_back_ios, color: AppColors.buttonColor)
                : Icon(Icons.help_rounded, color: AppColors.buttonColor),
          ),
        ),
      ],
    );
  }
}

