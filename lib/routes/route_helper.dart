import 'package:get/get.dart';
import 'package:tradeful_app/pages/app/homeowner/home/homeowner_dashboard.dart';
import 'package:tradeful_app/pages/app/homeowner/homeowner_dashboard/homeowner_orders_page.dart';
import 'package:tradeful_app/pages/app/homeowner/homeowner_dashboard/view_quotes_page.dart';
import 'package:tradeful_app/pages/app/homeowner/notifications/homeowner_notification_page.dart';
import 'package:tradeful_app/pages/app/homeowner/profile/profile_page.dart';
import 'package:tradeful_app/pages/app/homeowner/request_job/homeowner_request_job_page.dart';
import 'package:tradeful_app/pages/app/tradesmen/accept_job/accept_job_page.dart';
import 'package:tradeful_app/pages/app/tradesmen/home/tradesmen_dashboard.dart';
import 'package:tradeful_app/pages/onboarding/homeowner/OTP_verification_homeowner.dart';
import 'package:tradeful_app/pages/onboarding/homeowner/onboardingFinalHomeowner.dart';
import 'package:tradeful_app/pages/onboarding/tradesperson/onboardingFinalTradesPerson.dart';
import 'package:tradeful_app/pages/onboarding/onboardingOnePage.dart';
import 'package:tradeful_app/pages/onboarding/tradesperson/onboardingThreePageTradesPerson.dart';
import 'package:tradeful_app/pages/onboarding/tradesperson/onboardingTradesPersonTwoPage.dart';
import 'package:tradeful_app/pages/onboarding/homeowner/reivew_onboarding_homeowner_page.dart';
import 'package:tradeful_app/pages/onboarding/tradesperson/reivew_onboarding_tradesmen_page.dart';
import '../models/user_model.dart';
import '../pages/app/homeowner/homeowner_dashboard/homeowner_order_history_page.dart';
import '../pages/app/homeowner/homeowner_dashboard/view_profile_homeowner.dart';
import '../pages/app/homeowner/messaging/homeowner_messaging.dart';
import '../pages/app/homeowner/messaging/homeowner_messaging_room_page.dart';
import '../pages/app/homeowner/profile/edit_profile_image.dart';
import '../pages/home/main_home_page.dart';
import '../pages/onboarding/homeowner/onboardingHomeownerTwoPage.dart';
import '../pages/onboarding/homeowner/onboardingThreeHomeOwner.dart';
import '../pages/onboarding/tradesperson/OTP_verification_tradesperson.dart';

// Current user

final User currentUser =
    User(id: 0, name: 'You', avatar: 'assets/images/profile_icon.jpeg');

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
  static const String onbordingOTPVTradesMenVerification =
      '/onboarding-verify-tradesperson';
  static const String onbordingOTPVHomeOwnerVerification =
      '/onboarding-verify-homeowner';
  static const String onboardingReviewTradesMen = '/review-tradesmen';
  static const String onboardingReviewHomeOwner = '/review-homeowner';

  // App

  // Homeowner

  static const String homeOwnerDashboard = '/dashboard-homeowner';
  static const String homeOwnerRequestJob = '/homeowner-request-job';
  static const String homeOwnerOrders = '/homeowner-orders';
  static const String homeOwnerOrderHistory = '/homeowner-order-history';
  static const String homeOwnerQuotes = '/homeowner-view-quotes';
  static const String homeOwnerMessaging = '/homeowner-messaging';
  static const String homeOwnerMessagingRoom = '/homeowner-messaging-room';
  static const String homeOwnerViewProfile = '/homeowner-view-profile';
  static const String homeOwnerEditProfile = '/homeowner-view-profile';
  static const String homeOwnerMyProfile = '/homeowner-my-profile';
  static const String homeOwnerNotifications = '/homeowner-notifications';

  // TradesPerson

  static const String tradesMenDashboard = '/dashbaord-tradesmen';
  static const String acceptJobTradesman = '/accept-job-tradesman';

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
  static String getOnbordingOTPTradesMenVerification() =>
      '$onbordingOTPVTradesMenVerification';
  static String getOnbordingOTPHomeOwnerVerification() =>
      '$onbordingOTPVHomeOwnerVerification';
  static String getOnboardingReviewHomeOwner() => '$onboardingReviewHomeOwner';
  static String getOnboardingReviewTradesMen() => '$onboardingReviewTradesMen';

  // App Routes

  // Homeowner

  static String getHomeOwnerDashboard() => '$homeOwnerDashboard';
  static String getHomeOwnerRequestJob() => '$homeOwnerRequestJob';
  static String getHomeOwnerOrders() => '$homeOwnerOrders';
  static String getHomeOwnerOrderHistory() => '$homeOwnerOrderHistory';
  static String getHomeOwnerQuotes() => '$homeOwnerQuotes';
  static String getHomeOwnerMessaging() => '$homeOwnerMessaging';
  static String getHomeOwnerMessagingRoom() => '$homeOwnerMessagingRoom';
  static String getHomeOwnerViewProfile() => '$homeOwnerViewProfile';
  static String getHomeOwnerMyProfile() => '$homeOwnerMyProfile';
  static String getHomeOwnerEditProfile() => '$homeOwnerEditProfile';
  static String getHomeOwnerNotifications() => '$homeOwnerNotifications';

  // Tradesperson

  static String getTradesMenDashboard() => '$tradesMenDashboard';
  static String getAcceptJobTradesman() => '$acceptJobTradesman';

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
      name: onbordingOTPVTradesMenVerification,
      page: () => OTPVerificationTradesPersonPage(),
    ),
    GetPage(
      name: onbordingOTPVHomeOwnerVerification,
      page: () => OTPVerificationHomeOwnerPage(),
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

    // Homeowner

    GetPage(
      name: homeOwnerDashboard,
      page: () => HomeOwnerDashboardPage(),
    ),
    GetPage(
      name: homeOwnerRequestJob,
      page: () => HomeOwnerRequestJobPage(),
    ),
    GetPage(
      name: homeOwnerOrders,
      page: () => HomeOwnerOrdersPage(),
    ),
    GetPage(
        name: homeOwnerOrderHistory, page: () => HomeOwnerOrderHistoryPage()),
    GetPage(
      name: homeOwnerQuotes,
      page: () => HomeOwnerViewQuotesPage(),
    ),
    GetPage(
      name: homeOwnerMessaging,
      page: () => HomeOwnerMessagingPage(),
    ),
    GetPage(
      name: homeOwnerMessagingRoom,
      page: () => ChatRoom(user: currentUser),
    ),
    GetPage(
      name: homeOwnerViewProfile,
      page: () => ViewProfileHomeOwnerPage(),
    ),
    GetPage(
      name: homeOwnerMyProfile,
      page: () => ProfilePage(),
    ),
    GetPage(
      name: homeOwnerEditProfile,
      page: () => EditProfilePage(),
    ),
    GetPage(
      name: homeOwnerNotifications,
      page: () => NotificationsScreen(),
    ),
    // Tradesperson

    GetPage(
      name: tradesMenDashboard,
      page: () => TradesMenDashboardPage(),
    ),
    GetPage(
      name: acceptJobTradesman,
      page: () => TradesManAcceptJobPage(),
    ),
  ];
}
