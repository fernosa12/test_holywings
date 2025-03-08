// import 'dart:io';
// import 'package:dio/dio.dart';
// import 'package:get/get.dart';
// import 'package:test_clean_architecture/presentations/auth/get_auth_controller/auth_controller.dart';
// import '../../router/router.dart';

// class DioTokenInterceptor extends Interceptor { // ✅ Ubah dari InterceptorsWrapper ke Interceptor (Dio versi terbaru)
//   final AppRouter router;

//   DioTokenInterceptor(this.router);

//   @override
//   void onError(DioException err, ErrorInterceptorHandler handler) {
//     if (err.response?.statusCode == HttpStatus.unauthorized) {
//       final authController = Get.find<AuthController>(); // ✅ Ambil AuthController dari GetX
//       authController.logout(); // ✅ Reset user saat Unauthorized
//     }
//     return handler.next(err);
//   }

//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     final authController = Get.find<AuthController>(); // ✅ Ambil AuthController dari GetX
//     final currentUser = authController.user.value; // ✅ Akses user dari AuthController

//     if (currentUser?.token != null) {
//       options.headers['Authorization'] = 'Bearer ${currentUser!.token}';
//     }

//     // Menentukan Content-Type untuk POST requests
//     if (options.method == 'POST') {
//       options.headers['Content-Type'] = 'application/x-www-form-urlencoded';
//     }

//     // Tambahkan userId jika tersedia
//     if (options.data is Map && (options.data as Map).containsKey('dio.user_id')) {
//       options.data = <String, dynamic>{
//         ...options.data,
//         'userId': currentUser?.userId,
//       };
//     } else if (options.queryParameters.containsKey('dio.user_id')) {
//       options.queryParameters = <String, dynamic>{
//         ...options.queryParameters,
//         'userId': currentUser?.userId,
//       };
//     } else if (options.data is FormData &&
//         (options.data as FormData)
//             .fields
//             .any((element) => element.key == 'dio.user_id')) {
//       options.data.fields.add(MapEntry('userId', currentUser?.userId ?? ''));
//     }

//     return handler.next(options);
//   }

//   @override
//   void onResponse(Response response, ResponseInterceptorHandler handler) async {
//     return handler.next(response);
//   }
// }

// Map get useUserId {
//   return {
//     'dio.user_id': true,
//   };
// }
