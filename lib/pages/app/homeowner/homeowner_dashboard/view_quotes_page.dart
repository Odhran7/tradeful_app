import 'package:flutter/material.dart';
import 'package:tradeful_app/pages/app/homeowner/homeowner_dashboard/homeowner_orders_page.dart';
import 'package:tradeful_app/utils/dimensions.dart';
import 'package:tradeful_app/widgets/big_text.dart';
import 'package:tradeful_app/widgets/main_app/appbar/main_app_bar_widget.dart';
import 'package:tradeful_app/widgets/main_app/footer/main_app_footer_widget.dart';
import '../../../../models/order_model.dart';
import '../../../../models/tradespeople.dart';
import '../../../../utils/colors.dart';
import '../../../../widgets/main_app/tradesperson_quote_widget.dart';

class HomeOwnerViewQuotesPage extends StatelessWidget {
  const HomeOwnerViewQuotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<OrderItem> orders = [
      OrderItem(
        date: '15th Aug 2023',
        tradeRequested: 'Electrician',
        icon: Icons.electrical_services,
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
            'Electrician'),
      ),
    ];
    return Scaffold(
      appBar: MainAppBarWidget(profileIcon: 'assets/images/profile_icon.jpeg'),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: Dimensions.width30,
          vertical: Dimensions.height30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [Colors.blueGrey[50]!, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            BigText(
                text: "View Your Quotes",
                size: 30,
                bold: true,
                color: AppColors.mainColor),
            SizedBox(height: Dimensions.height30), 
            Expanded(
              child: ListView.separated(
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  return TradespersonCard(order: orders[index]);
                },
                separatorBuilder: (context, index) => Divider(
                    color:
                        AppColors.textColor.withOpacity(0.2)), 
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          MainAppFooterWidget(needsBack: true, page: HomeOwnerOrdersPage()),
    );
  }
}
