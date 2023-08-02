import 'package:get/get.dart';

class Dimensions {
  // Width: 1080 Height: 2220
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.height;

  // Widths

  static double width15 = screenWidth / 148;
  static double width30 = screenWidth / 36;
  static double width60 = screenWidth / 37;
  static double width100 = screenWidth / 10.8;

  // Heights

  static double height15 = screenHeight / 72;
  static double height30 = screenHeight / 74;
  static double height60 = screenHeight / 18;
  static double height100 = screenHeight / 22.2;
}
