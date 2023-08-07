import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/Dimensions.dart';
import '../../widgets/appBarOnboardingWidget.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarOnboardingWidget(text: "Terms and Conditions"),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Dimensions.height60,
              ),
              BigText(text: "Tradeful Terms of Use", bold: true, size: 35),
              SmallText(text: "Effective Date: [7/8/23]"),
              BigText(text: "1. Acceptance of Terms", bold: true),
              SmallText(text: "Welcome to Tradeful (\"we,\" \"our,\" \"us\"), a digital platform that connects homeowners with verified tradespeople. By accessing or using our app, you acknowledge that you have read, understood, and agreed to comply with these Terms of Use. If you do not agree with any part of these terms, you must discontinue using our services."),
              BigText(text: "2. Eligibility", bold: true),
              SmallText(text: "You must be 18 years or older to use the Tradeful platform. By creating an account, you represent that you meet this age requirement."),
              BigText(text: "3. Privacy and Security", bold: true),
              SmallText(text: "Your data will be encrypted and handled with care. Please review our Privacy Policy for more information about how we collect, use, and protect your information."),
              BigText(text: "4. User Responsibilities", bold: true),
              SmallText(text: "Users are responsible for all content posted on Tradeful and agree not to post any unlawful, harmful, or misleading information. All listings will be automatically deleted after 30 days or upon job completion."),
              BigText(text: "5. Financial Terms", bold: true),
              SmallText(text: "Tradeful employs various monetization strategies, including:\n● Transaction fees for payments made via the app.\n● Charges for emergency bounties.\n● Monthly subscription fees for premium features.\nExact pricing details will be available within the app."),
              BigText(text: "6. Dispute Resolution", bold: true),
              SmallText(text: "Tradeful is a facilitator and not liable for disputes between users. Any disputes must be resolved independently and without Tradeful's involvement."),
              BigText(text: "7. Limitation of Liability", bold: true),
              SmallText(text: "Tradeful's role is limited to connecting parties. We are not liable for any dissatisfaction, harm, or legal violations that may arise from interactions or transactions between users."),
              BigText(text: "8. User Conduct", bold: true),
              SmallText(text: "Users must adhere to standards of professional and respectful behavior. Harassment, bullying, scamming, or any fraudulent activities are prohibited. Violations may result in suspension or termination of accounts."),
              BigText(text: "9. Modifications", bold: true),
              SmallText(text: "We reserve the right to change these terms at any time. Changes will be communicated as appropriate, and your continued use signifies acceptance of the new terms."),
              BigText(text: "10. Governing Law", bold: true),
              SmallText(text: "These terms are governed by the laws of Ireland, and any disputes arising out of these terms will be subject to the jurisdiction of Irish courts."),
              BigText(text: "11. Termination", bold: true),
              SmallText(text: "We may suspend or terminate accounts that violate these terms at our sole discretion."),
              BigText(text: "12. Contact Information", bold: true),
              SmallText(text: "For questions, clarifications, or assistance, please contact us at [Company's Email Address]."),
            ],
          ),
        ));
  }
}
