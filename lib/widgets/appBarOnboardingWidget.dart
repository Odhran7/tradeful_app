import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'big_text.dart';

class AppBarOnboardingWidget extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  const AppBarOnboardingWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset("assets/images/logoJpg.jpg",
              fit: BoxFit.contain, height: 32),
          SizedBox(width: 8),
          BigText(text: text),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); 
}
