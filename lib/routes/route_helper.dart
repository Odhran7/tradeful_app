import 'package:get/get.dart';
import '../pages/home/main_home_page.dart';

class RouteHelper {
  static const String initial = '/';

  // Initial Routes

  static String getInitial() => '$initial';

  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () => MainAppPage(),
    ),
  ];
}
