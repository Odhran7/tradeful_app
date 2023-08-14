import 'package:flutter/material.dart';
import 'package:tradeful_app/pages/app/tradesmen/accept_job/accept_job_page.dart';
import 'package:tradeful_app/widgets/main_app/appbar/main_app_bar_widget.dart';
import 'package:tradeful_app/widgets/main_app/footer/main_app_footer_tradesman_widget.dart';

import '../../../../widgets/main_app/footer/main_app_footer_widget.dart';

class TradesMenDashboardPage extends StatelessWidget {
  const TradesMenDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarWidget(profileIcon: "assets/images/profile_icon.jpeg"),
      body: Container(),
      bottomNavigationBar: MainAppFooterWidget(page: TradesManAcceptJobPage()),
    );
  }
}
