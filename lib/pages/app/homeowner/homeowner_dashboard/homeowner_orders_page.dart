import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tradeful_app/pages/app/homeowner/homeowner_dashboard/homeowner_order_history_page.dart';
import 'package:tradeful_app/utils/colors.dart';
import 'package:tradeful_app/utils/dimensions.dart';
import 'package:tradeful_app/widgets/big_button_stateless_widget.dart';
import 'package:tradeful_app/widgets/big_text.dart';
import 'package:tradeful_app/widgets/main_app/appbar/main_app_bar_widget.dart';
import 'package:tradeful_app/widgets/main_app/footer/main_app_footer_widget.dart';
import 'package:tradeful_app/widgets/main_app/my_orders_carousel_widget.dart';

import '../request_job/homeowner_request_job_page.dart';

class HomeOwnerOrdersPage extends StatelessWidget {
  const HomeOwnerOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarWidget(profileIcon: "assets/images/profile_icon.jpeg",),
      body: Container(
        height: Dimensions.screenHeight * 0.70,
        margin: EdgeInsets.only(
          top: Dimensions.height60,
          bottom: Dimensions.height60,
          left: Dimensions.width30,
          right: Dimensions.width30
        ),
        child: Container(
          padding: EdgeInsets.only(
            top: Dimensions.height15,
            bottom: Dimensions.height15,
            left: Dimensions.width15,
            right: Dimensions.width15
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: AppColors.buttonColor, width: 2.0)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Dimensions.height15,),
              BigText(text: "Your Order requests", bold: true, size: 25,),
              SizedBox(height: Dimensions.height30,),
              MyOrdersCarouselWidget(),
              BigButtonWidget(text: "View Order History", page: HomeOwnerOrderHistoryPage()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MainAppFooterWidget(page: HomeOwnerRequestJobPage()),
    );
  }
}