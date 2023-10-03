import 'package:flutter/material.dart';

class AppConstants {
  static const String APP_NAME = "Tradeful_App";
  static const int APP_VERSION = 1;
  static const String _baseUrl = "http://localhost:3000";

  static const kSendButtonTextStyle = TextStyle(
    color: Colors.lightBlueAccent,
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
  );

  static const kMessageTextFieldDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    hintText: 'Type your message here...',
    hintStyle: TextStyle(fontFamily: 'Poppins', fontSize: 14),
    border: InputBorder.none,
  );

  static const kMessageContainerDecoration = BoxDecoration(
      // border: Border(
      //   top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
      // ),

      );
}
