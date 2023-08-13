import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeful_app/utils/dimensions.dart';

import '../../utils/colors.dart';

class MainAppFooterWidget extends StatefulWidget {
  const MainAppFooterWidget({Key? key}) : super(key: key);

  @override
  State<MainAppFooterWidget> createState() => _MainAppFooterWidgetState();
}

class _MainAppFooterWidgetState extends State<MainAppFooterWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // Allow overflow
      children: [
        Container(
          height: 90,
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
          bottom: 65, // Position outside the container
          right: 20,
          child: FloatingActionButton(
            shape: CircleBorder(),
            backgroundColor: Colors.white,
            onPressed: () {},
            child: Icon(Icons.add, color: AppColors.buttonColor),
          ),
        ),
      ],
    );
  }
}
