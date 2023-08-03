import 'package:get/get.dart';
import 'package:tradeful_app/pages/onboarding/onboardingOnePage.dart';
import 'package:tradeful_app/pages/onboarding/onboardingTradesPersonTwoPage.dart';
import '../pages/home/main_home_page.dart';
import '../pages/onboarding/onboardingHomeownerTwoPage.dart';

class RouteHelper {
  static const String initial = '/';
  static const String onboardingOne = '/onboarding-one';
  static const String onboardingTwoTradesPerson =
      '/onboarding-two-tradesperson';
  static const String onboardingTwoHomeOwner = '/onboarding-two-homeowner';

  // Initial Routes

  static String getInitial() => '$initial';
  static String getOnboardingOne() => '$onboardingOne';
  static String getOnboardingTwoTradesPerson() => '$onboardingTwoTradesPerson';
  static String getOnboardingTwoHomeOwner() => '$onboardingTwoHomeOwner';

  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () => MainAppPage(),
    ),
    GetPage(
      name: onboardingOne,
      page: () => OnboardingOnePage(),
    ),
    GetPage(
      name: onboardingTwoTradesPerson,
      page: () => OnboardingTradesPersonTwoPage(),
    ),
    GetPage(
      name: onboardingTwoHomeOwner,
      page: () => OnboardingHomeOwnerTwoPage(),
    ),
  ];
}
