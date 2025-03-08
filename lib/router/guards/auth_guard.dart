// import 'package:auto_route/auto_route.dart';
// import 'package:get/get.dart';
// import 'package:test_clean_architecture/presentations/auth/get_auth_controller/auth_controller.dart';

// import '../router.dart';

// class AuthGuard extends AutoRouteGuard {
//   @override
//   void onNavigation(NavigationResolver resolver, StackRouter router) {
//     final authController = Get.find<AuthController>(); 

//     if (authController.isAuthenticated.value) {
//       resolver.next(true);
//     } else {
//       resolver.redirect(const LoginRoute());   }
//   }
// }
