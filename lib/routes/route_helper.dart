import 'package:get/get.dart';
import 'package:tradeful_app/pages/onboarding/onboardingOnePage.dart';
import '../pages/home/main_home_page.dart';

class RouteHelper {
  static const String initial = '/';
  static const String onboardingOne = '/onboarding-one';

  // Initial Routes

  static String getInitial() => '$initial';
  static String getOnboardingOne() => '$onboardingOne';

  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () => MainAppPage(),
    ),
    GetPage(
      name: onboardingOne,
      page: () => OnboardingOnePage(),
    ),
  ];
}
