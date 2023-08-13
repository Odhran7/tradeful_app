import 'package:flutter/material.dart';
import 'package:tradeful_app/widgets/main_app/main_app_bar_widget.dart';

import '../../../../widgets/main_app/main_app_footer_widget.dart';

class TradesMenDashboardPage extends StatelessWidget {
  const TradesMenDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarWidget(profileIcon: "assets/images/profile_icon.jpeg"),
      body: Container(),
      bottomNavigationBar: MainAppFooterWidget(),
    );
  }
}
