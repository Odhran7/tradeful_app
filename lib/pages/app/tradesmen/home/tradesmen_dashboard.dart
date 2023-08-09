import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeful_app/widgets/main_app_bar_widget.dart';

class TradesMenDashboardPage extends StatelessWidget {
  const TradesMenDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarWidget(profileIcon: "assets/images/profile_icon.jpeg"),
    );
  }
}
