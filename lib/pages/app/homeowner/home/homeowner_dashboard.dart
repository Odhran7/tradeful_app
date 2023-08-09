import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/main_app_bar_widget.dart';

class HomeOwnerDashboardPage extends StatelessWidget {
  const HomeOwnerDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarWidget(profileIcon: "assets/images/profile_icon.jpeg",),
    );
  }
}