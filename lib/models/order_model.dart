// This is a model for storing the orderItems for viewing your orders that you have created

import 'package:flutter/cupertino.dart';
import 'package:tradeful_app/models/tradespeople.dart';
import 'package:tradeful_app/utils/colors.dart';
import 'package:tradeful_app/widgets/main_app/trade_selection_widget.dart';

class OrderItem {
  final String tradeRequested;
  final IconData icon;
  final String priceRequested;
  final int starsRequested;
  final int
      urgency; // This is an int that goes from one to three that defines how quick the job needs to be done 1 in a week 3 today or tomorrow (ASAP)
  TradesPerson? tradesPerson;
  String? date;

  OrderItem({
    required this.tradeRequested,
    required this.icon,
    required this.priceRequested,
    required this.starsRequested,
    required this.urgency,
    this.tradesPerson,
    this.date,
  });

  // Getter method returns the color needed to style the order card to indicate the sense of urgency

  Color get urgencyColor {
    switch (urgency) {
      case 3:
        return AppColors.urgentRed;
      case 2:
        return AppColors.urgentOrange;
      case 1:
        return AppColors.urgentYellow;
      default:
        return AppColors.complementaryWhite1;
    }
  }

  // Getter method to return the text to display to indicate the sense of urgency attached to a particular job

  String get urgencyText {
    switch (urgency) {
      case 3:
        return "Urgent - today";
      case 2:
        return "Soon - next 2 to 3 days";
      case 1:
        return "Next week";
      default:
        return "You have not set an urgency";
    }
  }

  // Getter methods defined below to retrieve the name, profile image and numComments;

  String get tradesPersonName {
    if (tradesPerson != null) {
      return tradesPerson!.name;
    } else {
      return "No tradesperson attached to job";
    }
  }

  String get tradesPersonImage {
    if (tradesPerson != null) {
      return tradesPerson!.image;
    } else {
      return "No tradesperson attached to job";
    }
  }

  String get tradesPersonNumComments {
    if (tradesPerson != null) {
      return tradesPerson!.numComments;
    } else {
      return "No tradesperson attached to job";
    }
  }
}
