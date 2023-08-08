import 'package:get/get.dart';
import 'package:tradeful_app/pages/onboarding/onboardingFinalHomeowner.dart';
import 'package:tradeful_app/pages/onboarding/onboardingFinalTradesPerson.dart';
import 'package:tradeful_app/pages/onboarding/onboardingOnePage.dart';
import 'package:tradeful_app/pages/onboarding/onboardingThreePageTradesPerson.dart';
import 'package:tradeful_app/pages/onboarding/onboardingTradesPersonTwoPage.dart';
import '../pages/home/main_home_page.dart';
import '../pages/onboarding/onboardingHomeownerTwoPage.dart';
import '../pages/onboarding/onboardingThreeHomeOwner.dart';

class RouteHelper {
  static const String initial = '/';
  static const String onboardingOne = '/onboarding-one';
  static const String onboardingTwoTradesPerson =
      '/onboarding-two-tradesperson';
  static const String onboardingTwoHomeOwner = '/onboarding-two-homeowner';
  static const String onboardingThreeTradesPerson =
      '/onboarding-three-tradesperson';
  static const String onboardingThreeHomeOwner = '/onboarding-three-homeowner';
  static const String onboardingFinalHomeOwner = '/onboarding-final-homeonwer';
  static const String onboardingFinalTradesPerson =
      '/onboarding-final-homeowner';

  // Initial Routes

  static String getInitial() => '$initial';
  static String getOnboardingOne() => '$onboardingOne';
  static String getOnboardingTwoTradesPerson() => '$onboardingTwoTradesPerson';
  static String getOnboardingTwoHomeOwner() => '$onboardingTwoHomeOwner';
  static String getOnboardingThreeTradesPerson() =>
      '$onboardingThreeTradesPerson';
  static String getOnboardingThreeHomeOwner() => '$onboardingThreeHomeOwner';
  static String getOnboardingFinalTradesPerson() =>
      '$onboardingFinalTradesPerson';
  static String getOnboardingFinalHomeOwner() => '$onboardingFinalHomeOwner';

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
    GetPage(
      name: onboardingThreeTradesPerson,
      page: () => OnboardingThreeTradesPersonPage(),
    ),
    GetPage(
      name: onboardingThreeHomeOwner,
      page: () => OnboardingThreeHomeOwnerPage(),
    ),
    GetPage(
      name: onboardingFinalHomeOwner,
      page: () => OnboardingFinalHomeOwnerPage(),
    ),
    GetPage(
      name: onboardingFinalTradesPerson,
      page: () => OnboardingFinalTradesPersonPage(),
    ),
  ];
}
