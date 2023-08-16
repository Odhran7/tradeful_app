import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:tradeful_app/main.dart';
import 'package:tradeful_app/utils/dimensions.dart';
import 'package:tradeful_app/widgets/main_app/appbar/main_app_bar_widget.dart';
import '../../../../models/user_model.dart';
import '../../../../utils/colors.dart';
import '../../../../widgets/main_app/profile/profile_widget.dart';
import '../../../../widgets/main_app/profile/textfield_widget.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final User user =
      User(id: 0, name: 'You', avatar: 'assets/images/profile_icon.jpeg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarWidget(
        profileIcon: 'assets/images/profile_icon.jpeg',
      ),
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
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              margin: EdgeInsets.only(top: Dimensions.height60),
              child: ProfileWidget(
                imagePath: user.avatar,
                isEdit: true,
                onClicked: () async {},
              ),
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Full Name',
              text: user.name,
              onChanged: (name) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Email',
              text: user.email,
              onChanged: (email) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'About',
              text: user.about,
              maxLines: 5,
              onChanged: (about) {},
            ),
          ],
        ),
      ),
    );
  }
}
