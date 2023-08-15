import 'package:flutter/material.dart';
import 'package:tradeful_app/utils/colors.dart';
import 'package:tradeful_app/utils/dimensions.dart';
import 'package:tradeful_app/widgets/small_text.dart';

import '../../../models/order_model.dart';
import '../../models/tradespeople.dart';

class MyOrderHistoryCarouselWidget extends StatelessWidget {
  MyOrderHistoryCarouselWidget({Key? key}) : super(key: key);

  // Data for storing the mock orders that have been placed

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

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.screenHeight * 0.5,
      padding: EdgeInsets.only(
        top: Dimensions.height30,
        bottom: Dimensions.height30,
        left: Dimensions.width30,
        right: Dimensions.width30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: AppColors.buttonColor, width: 2.0)
      ),
      child: GridView.builder(
        padding: EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 4.5,
        ),
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return Card(
            color: AppColors.buttonColor,
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
                SizedBox(height: 5,),
                SmallText(
                  text: order.urgencyText,
                  color: AppColors.textColor,
                ),
                SizedBox(height: 10),
                SmallText(
                  text: 'Date: ${order.date}',
                  color: AppColors.textColor,
                ),
                SizedBox(height: 10),
                SmallText(
                  text: 'Tradesperson: ${order.tradesPersonName}',
                  color: AppColors.textColor,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
