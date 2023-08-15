import 'package:flutter/material.dart';
import 'package:tradeful_app/pages/app/homeowner/homeowner_dashboard/view_quotes_page.dart';
import 'package:tradeful_app/utils/colors.dart';
import 'package:tradeful_app/widgets/small_button_widget.dart';
import 'package:tradeful_app/widgets/small_text.dart';

import '../../models/order_model.dart';

class MyOrdersCarouselWidget extends StatelessWidget {
  MyOrdersCarouselWidget({super.key});

  // Data for storing the mock orders that have been placed

  final List<OrderItem> orders = [
    OrderItem(
        tradeRequested: 'Plumber',
        icon: Icons.plumbing,
        priceRequested: '\$260',
        starsRequested: 4,
        urgency: 3),
    OrderItem(
        tradeRequested: 'Electrician',
        icon: Icons.electrical_services,
        priceRequested: '\$160',
        starsRequested: 5,
        urgency: 2),
    OrderItem(
        tradeRequested: 'Carpenter',
        icon: Icons.carpenter_rounded,
        priceRequested: '\$100',
        starsRequested: 3,
        urgency: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 3.5,
        ),
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return Card(
            color: order.urgencyColor,
            elevation: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(order.icon, size: 40, color: AppColors.textColor),
                SizedBox(height: 10),
                SmallText(
                  text: order.tradeRequested,
                  color: AppColors.textColor,
                ),
                SmallText(
                  text: order.priceRequested,
                  color: AppColors.textColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (starIndex) {
                    return Icon(
                      starIndex < order.starsRequested
                          ? Icons.star
                          : Icons.star_border,
                      color: AppColors.textColor,
                    );
                  }),
                ),
                SmallText(
                  text: order.urgencyText,
                  color: AppColors.textColor,
                ),
                SizedBox(height: 4),
                SmallButtonWidget(text: "Quotes", page: HomeOwnerViewQuotesPage(), buttonColor: AppColors.textColor, textColor: AppColors.mainColor,)
              ],
            ),
          );
        },
      ),
    );
  }
}
