import 'package:flutter/material.dart';
import 'package:tradeful_app/utils/colors.dart';

Container buildChatComposer() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    color: Colors.white,
    height: 100,
    child: Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.emoji_emotions_outlined,
                  color: AppColors.buttonColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your message ...',
                      hintStyle: TextStyle(color: Colors.grey[500], fontFamily: 'Salma Pro'),
                    ),
                  ),
                ),
                Icon(
                  Icons.attach_file,
                  color: AppColors.buttonColor,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.mic,
            color: AppColors.buttonColor
          ),
        )
      ],
    ),
  );
}
