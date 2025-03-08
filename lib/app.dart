import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_easy_dialogs/flutter_easy_dialogs.dart';

import 'data/themes/themes.dart';
import 'di/di.dart';
import 'router/router.dart';
import 'presentations/home/get_home_controller/get_home_controller.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // Inject Controller menggunakan GetX
    Get.put<HomeController>(di<HomeController>());

    return GetMaterialApp.router(
      title: 'Test Clean Architecture',
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
      theme: primaryTheme,
      builder: FlutterEasyDialogs.builder(),
      debugShowCheckedModeBanner: false,
    );
  }
}
