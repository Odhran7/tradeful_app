import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeful_app/pages/app/homeowner/request_job/homeowner_request_job_page.dart';
import 'package:tradeful_app/utils/colors.dart';
import 'package:tradeful_app/widgets/main_app/footer/main_app_footer_widget.dart';
import '../../../../widgets/main_app/appbar/main_app_bar_widget.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBarWidget(profileIcon: 'assets/images/profile_icon.jpeg'),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.notifications, color: AppColors.buttonColor),
            title: Text('Notification ${index + 1}'),
            subtitle: Text('This is the details of notification ${index + 1}.'),
            trailing: Text('5m ago', style: TextStyle(color: Colors.grey)),
            onTap: () {
              // Handle tap
            },
          );
        },
      ),
      bottomNavigationBar: MainAppFooterWidget(page: HomeOwnerRequestJobPage()),
    );
  }
}