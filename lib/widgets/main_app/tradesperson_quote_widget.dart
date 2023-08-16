import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeful_app/widgets/big_text.dart';

import '../../models/order_model.dart';
import '../../utils/colors.dart';
import '../small_text.dart';

class TradespersonCard extends StatefulWidget {
  final OrderItem order;

  TradespersonCard({required this.order});

  @override
  _TradespersonCardState createState() => _TradespersonCardState();
}

class _TradespersonCardState extends State<TradespersonCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.buttonColor,
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          ListTile(
            title: BigText(
                text: widget.order.tradeRequested,
                color: AppColors.textColor,
                bold: true),
            trailing:
                Icon(widget.order.icon, color: AppColors.textColor, size: 40),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.order.tradesPersonImage),
                  radius: 35,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SmallText(
                        text: widget.order.tradesPersonName,
                        color: AppColors.textColor,
                        size: 15),
                    SmallText(
                        text: 'Rating: ${widget.order.tradesPersonRating}',
                        color: AppColors.textColor,
                        size: 15),
                    SmallText(
                        text: 'Location: ${widget.order.tradesPersonLocation}',
                        color: AppColors.textColor,
                        size: 15),
                    SmallText(
                      text: 'Price: ${widget.order.priceRequested}',
                      color: AppColors.textColor,
                      size: 15,
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isExpanded = !isExpanded;
                            });
                          },
                          child: Text("View Message"),
                          style: TextButton.styleFrom(
                            primary: AppColors.mainColor,
                            backgroundColor: AppColors.textColor,
                          ),
                        ),
                        SizedBox(width: 10),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isExpanded = !isExpanded;
                            });
                          },
                          child: Text("View Profile"),
                          style: TextButton.styleFrom(
                            primary: AppColors.mainColor,
                            backgroundColor: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SmallText(text: 'I am wondering if I could do this today for \€45?', color: AppColors.textColor,),
            ),
        ],
      ),
    );
  }
}
