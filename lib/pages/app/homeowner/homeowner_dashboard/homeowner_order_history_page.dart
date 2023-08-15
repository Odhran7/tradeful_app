import 'package:flutter/material.dart';
import 'package:tradeful_app/pages/app/homeowner/homeowner_dashboard/homeowner_orders_page.dart';
import 'package:tradeful_app/pages/app/homeowner/request_job/homeowner_request_job_page.dart';
import 'package:tradeful_app/widgets/big_text.dart';
import 'package:tradeful_app/widgets/main_app/appbar/main_app_bar_widget.dart';
import 'package:tradeful_app/widgets/main_app/footer/main_app_footer_widget.dart';
import 'package:tradeful_app/widgets/main_app/order_history_widget.dart';

import '../../../../utils/Dimensions.dart';

class HomeOwnerOrderHistoryPage extends StatelessWidget {
  const HomeOwnerOrderHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarWidget(profileIcon: 'assets/images/profile_icon.jpeg'),
      body: Container(
          height: Dimensions.screenHeight,
          padding: EdgeInsets.only(
            left: Dimensions.width30,
            right: Dimensions.width30,
            top: Dimensions.height60,
            bottom: Dimensions.height60,
          ),
          child: Column(
            children: [
              BigText(text: "Your Order History", size: 30, bold: true),
              SizedBox(height: 15,),
              MyOrderHistoryCarouselWidget(),
            ],
          )),
      bottomNavigationBar: MainAppFooterWidget(
        needsBack: true,
        page: HomeOwnerOrdersPage(),
      ),
    );
  }
}
