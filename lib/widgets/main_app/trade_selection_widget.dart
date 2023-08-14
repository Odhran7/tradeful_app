import 'package:flutter/material.dart';
import 'package:tradeful_app/widgets/big_text.dart';
import 'package:tradeful_app/widgets/small_text.dart';

import '../../models/trade_model.dart';
import '../../utils/colors.dart';

class TradeSelectionWidget extends StatelessWidget {
  const TradeSelectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Trade> trades = [
      Trade(
          title: 'Electrician',
          description: 'Electrical services',
          icon: Icons.electrical_services),
      Trade(
          title: 'Plumber',
          description: 'Plumbing services',
          icon: Icons.plumbing),
      Trade(
          title: 'Photography',
          description: 'Photography services',
          icon: Icons.camera_alt),
      Trade(
          title: 'Welding', description: 'Welding services', icon: Icons.build),
      Trade(
          title: 'Carpentry',
          description: 'Carpentry services',
          icon: Icons.home_work),
      Trade(
          title: 'Painting',
          description: 'Painting services',
          icon: Icons.format_paint),
      Trade(
          title: 'Landscaping',
          description: 'Landscaping services',
          icon: Icons.nature),
      Trade(
          title: 'Mechanic',
          description: 'Automotive repair services',
          icon: Icons.car_repair),
    ];
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: trades.length,
      itemBuilder: (context, index) {
        final trade = trades[index];
        return Container(
          width: 75,
          height: 75,
          child: GestureDetector(
            onTap: () {
              print('${trade.title} is selected');
            },
            child: Card(
              color: AppColors.buttonColor,
              elevation: 5,
              child: Column(
                children: [
                  SizedBox(height: 5,),
                  Icon(trade.icon, color: AppColors.textColor),
                  SizedBox(height: 4,),
                  SmallText(text: trade.title, size: 10, bold: true, color: AppColors.textColor),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
