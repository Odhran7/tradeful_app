import 'package:flutter/material.dart';
import '../small_text.dart';

class CardDetailWidget extends StatelessWidget {
  const CardDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: const Color(0xfff5f5f5),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.credit_card),
          SizedBox(width: 3),
          SmallText(text: "**** **** **** 9898"),
          Icon(Icons.apple),
        ],
      ),
    );
  }
}
