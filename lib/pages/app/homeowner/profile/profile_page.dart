import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradeful_app/pages/app/homeowner/profile/edit_profile_image.dart';
import 'package:tradeful_app/utils/dimensions.dart';
import 'package:tradeful_app/widgets/main_app/appbar/main_app_bar_widget.dart';
import 'package:tradeful_app/widgets/main_app/card_detail_widget.dart';
import 'package:tradeful_app/widgets/small_text.dart';

import '../../../../models/user_model.dart';
import '../../../../utils/colors.dart';
import '../../../../widgets/big_text.dart';
import '../../../../widgets/main_app/profile/button_profile_widget.dart';
import '../../../../widgets/main_app/profile/numbers_profile_widget.dart';
import '../../../../widgets/main_app/profile/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user =
        User(id: 0, name: 'You', avatar: 'assets/images/profile_icon.jpeg');

    return Scaffold(
      appBar: MainAppBarWidget(profileIcon: 'assets/images/profile_icon.jpeg'),
      body: Container(
        margin: EdgeInsets.only(
            top: Dimensions.height15,
            bottom: Dimensions.height15,
            left: Dimensions.width15,
            right: Dimensions.width15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: AppColors.buttonColor, width: 2.0)),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              margin: EdgeInsets.only(top: Dimensions.height60),
              child: ProfileWidget(
                imagePath: user.avatar,
                onClicked: () {
                  Get.to(() => EditProfilePage());
                },
              ),
            ),
            const SizedBox(height: 24),
            buildName(user),
            const SizedBox(height: 24),
            Center(child: buildUpgradeButton()),
            const SizedBox(height: 24),
            NumbersWidget(),
            const SizedBox(height: 48),
            buildAbout(user),
          ],
        ),
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          BigText(text: user.name, bold: true),
          const SizedBox(height: 4),
          BigText(text: user.email, size: 15)
        ],
      );

  Widget buildUpgradeButton() => Container(
      margin: EdgeInsets.only(
          left: Dimensions.width100, right: Dimensions.width100),
      child: CardDetailWidget());

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigText(
              text: 'About',
              size: 20,
              bold: true,
            ),
            const SizedBox(height: 16),
            SmallText(text: user.about, size: 16),
          ],
        ),
      );
}
