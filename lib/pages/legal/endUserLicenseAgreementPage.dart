import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/Dimensions.dart';
import '../../widgets/appBarOnboardingWidget.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';

class EndUserLicenseAgreementPage extends StatelessWidget {
  const EndUserLicenseAgreementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOnboardingWidget(text: "License Agreement"),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Dimensions.height15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BigText(text: "End User License Agreement (EULA) for Tradeful App", bold: true, size: 35),
            SmallText(text: "Last Updated: [7/8/23]"),
            SmallText(text: "This End User License Agreement (\"Agreement\") is a legally binding agreement between you (\"User\" or \"You\") and Tradeful App Services Ltd, a corporation incorporated under the laws of [Jurisdiction], with its registered office located at [Address] (\"Company\", \"We\", \"Us\", or \"Our\"). This Agreement governs your use of the Tradeful mobile application (the \"App\")."),
            BigText(text: "1. Acceptance of Terms", bold: true),
            SmallText(text: "By downloading, installing, accessing, or using the Tradeful App, You agree to be bound by the terms and conditions of this Agreement. If You do not agree to these terms, You must not use the App."),
            BigText(text: "2. License Grant", bold: true),
            SmallText(text: "Subject to your compliance with the terms and conditions of this Agreement, Company grants You a limited, non-exclusive, non-transferable, revocable license to use the Tradeful App for personal and non-commercial purposes on a mobile device owned or controlled by You."),
            BigText(text: "3. User Content and Conduct", bold: true),
            SmallText(text: "a. User Content: You acknowledge and agree that any content, including text, images, videos, and other materials, that You post, upload, submit, or transmit through the App (\"User Content\") is your responsibility.\nb. Prohibited Conduct: You agree not to use the App for any purpose that is unlawful or prohibited by this Agreement, or to engage in any activity that could harm, disrupt, or interfere with the App's operation."),
            BigText(text: "4. Payment and Transactions", bold: true),
            SmallText(text: "a. Payment: You agree to pay professionals for services provided based on the terms agreed upon. Payments may be held in escrow until job completion.\nb. Commission: Company may deduct a commission fee of 5% from the total transaction amount as outlined in the App's policies."),
            BigText(text: "5. Privacy and Data Collection", bold: true),
            SmallText(text: "a. Collection and Use: You acknowledge and consent to the collection, processing, and use of your personal information, including phone numbers, names, emails, addresses, and cookies, as outlined in the Privacy Policy.\nb. Third-Party Access: You understand that Company may share certain user data with third parties to provide services and improve the App's functionality."),
            BigText(text: "6. Disclaimers and Limitation of Liability", bold: true),
            SmallText(text: "a. No Warranty: The Tradeful App is provided \"as is\" without any representations or warranties of any kind, whether express, implied, or statutory.\nb. Limitation of Liability: In no event shall Company be liable for any indirect, incidental, special, consequential, or punitive damages, whether in contract, tort, or otherwise."),
            BigText(text: "7. Termination", bold: true),
            SmallText(text: "Company reserves the right to suspend or terminate your access to the Tradeful App at any time, with or without cause, and without liability to You."),
            BigText(text: "8. Governing Law and Dispute Resolution", bold: true),
            SmallText(text: "This Agreement shall be governed by and construed in accordance with the laws of the Republic of Ireland. Any disputes arising out of or relating to this Agreement shall be subject to the exclusive jurisdiction of the courts located within the Republic of Ireland."),
            BigText(text: "9. Amendments", bold: true),
            SmallText(text: "Company reserves the right to modify, update, or revise this Agreement at any time. Changes will be effective upon posting to the Tradeful App."),
            BigText(text: "10. Termination by Company", bold: true),
            SmallText(text: "Company reserves the right to terminate your access to the Tradeful App for any reason that it deems fit, including but not limited to violations of this Agreement or inappropriate conduct."),
            BigText(text: "11. Entire Agreement", bold: true),
            SmallText(text: "This Agreement constitutes the entire agreement between You and Company regarding the subject matter hereof and supersedes all prior or contemporaneous agreements, understandings, and representations."),
            BigText(text: "12. Contact Information", bold: true),
            SmallText(text: "If You have any questions, concerns, or comments regarding this Agreement, please contact Us at Tradefulexternal@gmail.com."),
          ],
        ),
      ),
    );
  }
}

