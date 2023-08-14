import 'package:flutter/material.dart';
import 'package:tradeful_app/widgets/big_text.dart';
import 'package:tradeful_app/widgets/main_app/appbar/main_app_bar_widget.dart';
import 'package:tradeful_app/widgets/main_app/footer/main_app_footer_widget.dart';

import '../request_job/homeowner_request_job_page.dart';

class HomeOwnerOrdersPage extends StatelessWidget {
  const HomeOwnerOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarWidget(profileIcon: "assets/images/profile_icon.jpeg",),
      body: Container(
        child: BigText(text: "Your Dashboard", bold: true, size: 20,),
      ),
      bottomNavigationBar: MainAppFooterWidget(page: HomeOwnerRequestJobPage()),
    );
  }
}