import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tradetype {
  final String tradeType;
  final String svgIconPath;
  final String numType;
  final String numRatings;
  final List<String> jobTypes;
  final IconData icon;

  Tradetype(this.tradeType, this.svgIconPath, this.numType, this.numRatings,
      this.jobTypes, [this.icon = Icons.help]);
}
