import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradeful_app/routes/route_helper.dart';

import 'pages/home/main_home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainAppPage(),
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
