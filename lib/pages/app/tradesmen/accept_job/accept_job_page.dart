import 'package:flutter/material.dart';
import 'package:tradeful_app/pages/app/tradesmen/home/tradesmen_dashboard.dart';
import 'package:tradeful_app/widgets/main_app/appbar/main_app_bar_widget.dart';
import 'package:tradeful_app/widgets/main_app/footer/main_app_footer_tradesman_widget.dart';


class TradesManAcceptJobPage extends StatelessWidget {
  const TradesManAcceptJobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarWidget(profileIcon: 'assets/images/profile_icon.jpeg'),
      body: Container(

      ),
      bottomNavigationBar: MainAppFooterTradesmanWidget(page: TradesMenDashboardPage())
    );
  }
}