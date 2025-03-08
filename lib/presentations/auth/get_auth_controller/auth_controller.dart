import 'package:get/get.dart';

class AuthController extends GetxController {
  var isAuthenticated = false.obs; // ✅ State autentikasi pakai GetX

  void login() {
    isAuthenticated.value = true;
  }

  void logout() {
    isAuthenticated.value = false;
  }
}
