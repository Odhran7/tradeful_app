import 'package:flutter/material.dart';
import 'package:tradeful_app/utils/dimensions.dart';
import 'package:tradeful_app/widgets/main_app/main_app_bar_widget.dart';
import 'package:tradeful_app/widgets/small_text.dart';

import '../../../../utils/colors.dart';
import '../../../../widgets/big_text.dart';
import '../../../../widgets/main_app/trade_selection_widget.dart';

class HomeOwnerRequestJobPage extends StatelessWidget {
  const HomeOwnerRequestJobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            MainAppBarWidget(profileIcon: "assets/images/profile_icon.jpeg"),
        body: Container(
            margin: EdgeInsets.only(
              left: Dimensions.width30,
              right: Dimensions.width30,
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      bottom: Dimensions.height30,
                      top: Dimensions.height15,
                      left: Dimensions.width15,
                      right: Dimensions.width15),
                  child: BigText(
                      text: "What issues are you experiencing?",
                      size: 30,
                      bold: true),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: Dimensions.width30,
                      right: Dimensions.width30,
                      top: Dimensions.height30,
                      bottom: Dimensions.height30),
                  decoration: BoxDecoration(
                    color: AppColors.complementaryWhite1,
                    border:
                        Border.all(color: AppColors.buttonColor, width: 2.0),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: SmallText(
                    text:
                        "Please describe your issue below: Please also select which category of tradesperson you are requesting:",
                    size: 17,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: Dimensions.height30, bottom: Dimensions.height30),
                  child: TextField(
                    minLines: 5,
                    maxLines: 15,
                    decoration: InputDecoration(
                      hintText: "Start Explaining your issue here:",
                      hintStyle: TextStyle(
                        color: AppColors.mainColor,
                        fontFamily: 'Salma Pro',
                        fontSize: 13,
                        height: 1.2,
                      ),
                      focusColor: AppColors.mainColor,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: AppColors.buttonColor,
                            width: 2.0,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: AppColors.mainColor,
                            width: 2.0,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: AppColors.buttonColor,
                            width: 2.0,
                          )),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                BigText(text: "Select a service:", bold: true, size: 18),
                SizedBox(height: 10),
                Container(
                  height: 65,
                  child: TradeSelectionWidget()
                  ),
              ],
            )));
  }
}
