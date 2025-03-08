import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:test_clean_architecture/presentations/home/get_home_controller/get_home_controller.dart';

import 'app.dart';
import 'config.dart';
import 'di/di.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    final firebaseOption = AppConfig.firebaseOptions;

    // await Firebase.initializeApp(
    //   options: firebaseOption,
    // );
    HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: await getApplicationSupportDirectory());
    AppConfig.init(
      "",
      (await getApplicationSupportDirectory()).path,
      await PackageInfo.fromPlatform(),
      await DeviceInfoPlugin().deviceInfo,
    );
    setupInjection();
    Get.put<HomeController>(di<HomeController>());
    await di.allReady();
    runApp(
      App(),
    );
  } catch (e) {
    if (kDebugMode) {
      print(e);
    }
  }
}
