import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeful_app/pages/app/homeowner/request_job/homeowner_request_job_page.dart';
import 'package:tradeful_app/widgets/main_app/appbar/main_app_bar_widget.dart';
import 'package:tradeful_app/widgets/main_app/chat_box_widget.dart';
import 'package:tradeful_app/widgets/main_app/footer/main_app_footer_widget.dart';

import '../../../../widgets/main_app/messages/all_chats_widget.dart';
import '../../../../widgets/main_app/messages/recent_chats_widget.dart';

class HomeOwnerMessagingPage extends StatelessWidget {
  const HomeOwnerMessagingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarWidget(profileIcon: 'assets/images/profile_icon.jpeg'),
      body: SingleChildScrollView(
      child: Column(
        children: [
          RecentChats(),
          AllChats(),
        ],
      ),
    ),
      bottomNavigationBar: MainAppFooterWidget(page: HomeOwnerRequestJobPage()),
    );
  }
}