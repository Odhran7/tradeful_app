import 'package:flutter/material.dart';
import 'package:tradeful_app/pages/app/homeowner/home/homeowner_dashboard.dart';
import 'package:tradeful_app/utils/dimensions.dart';
import 'package:tradeful_app/widgets/main_app/appbar/main_app_bar_widget.dart';
import 'package:tradeful_app/widgets/main_app/footer/main_app_footer_widget.dart';

import '../../../../models/order_model.dart';
import '../../../../models/tradespeople.dart';

class HomeOwnerViewQuotesPage extends StatelessWidget {
  const HomeOwnerViewQuotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<OrderItem> orders = [
      OrderItem(
        date: '15th Aug 2023',
        tradeRequested: 'Plumber',
        icon: Icons.plumbing,
        priceRequested: '\$760',
        starsRequested: 4,
        urgency: 3,
        tradesPerson: TradesPerson(
            'John Smith',
            'assets/images/electrician_profile1.jpeg',
            '4.5',
            'Dublin',
            '120',
            'Electrician'),
      ),
      OrderItem(
        date: '10th Aug 2023',
        tradeRequested: 'Electrician',
        icon: Icons.electrical_services,
        priceRequested: '\$160',
        starsRequested: 5,
        urgency: 2,
        tradesPerson: TradesPerson(
            'Alice Johnson',
            'assets/images/plumber_profile1.jpeg',
            '4.7',
            'Dublin',
            '56',
            'Plumber'),
      ),
    ];
    return Scaffold(
      appBar: MainAppBarWidget(profileIcon: 'assets/images/profile_icon.jpeg'),
      body: Container(
        margin: EdgeInsets.only(
            left: Dimensions.width30,
            right: Dimensions.width30,
            top: Dimensions.height30,
            bottom: Dimensions.height30),
        child: Column(
          children: [],
        ),
      ),
      bottomNavigationBar:
          MainAppFooterWidget(needsBack: true, page: HomeOwnerDashboardPage()),
    );
  }
}
