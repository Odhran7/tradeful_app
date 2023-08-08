import 'package:get/get.dart';
import 'package:tradeful_app/pages/app/homeowner/home/homeowner_dashboard.dart';
import 'package:tradeful_app/pages/app/tradesmen/home/tradesmen_dashboard.dart';
import 'package:tradeful_app/pages/onboarding/onboardingFinalHomeowner.dart';
import 'package:tradeful_app/pages/onboarding/onboardingFinalTradesPerson.dart';
import 'package:tradeful_app/pages/onboarding/onboardingOnePage.dart';
import 'package:tradeful_app/pages/onboarding/onboardingThreePageTradesPerson.dart';
import 'package:tradeful_app/pages/onboarding/onboardingTradesPersonTwoPage.dart';
import 'package:tradeful_app/pages/onboarding/reivew_onboarding_homeowner_page.dart';
import 'package:tradeful_app/pages/onboarding/reivew_onboarding_tradesmen_page.dart';
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
  static const String onboardingReviewTradesMen = '/review-tradesmen';
  static const String onboardingReviewHomeOwner = 'review-homeowner';

  // App

  static const String homeOwnerDashboard = '/dashboard-homeowner';
  static const String tradesMenDashboard = '/dashbaord-tradesmen';

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
  static String getOnboardingReviewHomeOwner() => '$onboardingReviewHomeOwner';
  static String getOnboardingReviewTradesMen() => '$onboardingReviewTradesMen';

  // App Routes

  static String getHomeOwnerDashboard() => '$homeOwnerDashboard';
  static String getTradesMenDashboard() => '$tradesMenDashboard';

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
    GetPage(
      name: onboardingReviewHomeOwner,
      page: () => ReviewOnboardingHomeOwnerPage(),
    ),
    GetPage(
      name: onboardingReviewTradesMen,
      page: () => ReviewOnboardingTradesMenPage(),
    ),

    // App Get routes
    GetPage(
      name: homeOwnerDashboard,
      page: () => HomeOwnerDashboardPage(),
    ),
    GetPage(
      name: tradesMenDashboard,
      page: () => TradesMenDashboardPage(),
    ),
  ];
}
