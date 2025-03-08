import 'package:dio/dio.dart';
import 'package:test_clean_architecture/domain/entities/banner_home/banner_home.dart';

import '../../../lib.dart';

abstract class HomeApi {
  Future<ApiResponse<List<BannerHome>>> bannerHome();
  Future<ApiResponse<SongChart>>songChart();

  
}

class HomeApiImpl implements HomeApi {
  final Dio dio;

  HomeApiImpl(this.dio);
 

  @override
  Future<ApiResponse<List<BannerHome>>> bannerHome() async {
    final response = await dio.get(
      'api/v1/whats-on/banner',
     
    );
    return ApiResponse.fromResponse(response, (json) {
    return (json['data'] as List).map((item) => BannerHome.fromJson(item)).toList();
  });
  }
  Future<ApiResponse<SongChart>> songChart() async {
    final response = await dio.get(
      'api/v1/songs/charts/latest',
     
    );
    return ApiResponse.fromResponse(response, (json) {
     return SongChart.fromJson(json['data']);
  });
  }

  // @override
  // Future<ApiResponse<String>> changePassword(String userId, String password,
  //     String newPassword, String confirmPassword) async {
  //   final response = await dio.post(
  //     '/auth/changePassword',
  //     data: {
  //       'userId': userId,
  //       'password': password,
  //       'newPassword': newPassword,
  //       'passConfirm': confirmPassword
  //     },
  //     options: Options(
  //       headers: {
  //         'Content-Type': 'application/x-www-form-urlencoded',
  //       },
  //     ),
  //   );
  //   return ApiResponse.fromResponse(response, (json) {
  //     return response.data['message'];
  //   });
  // }

  // @override
  // Future<void> logout() {
  //   throw UnimplementedError();
  // }

  // @override
  // Future<String> register(
  //   String username,
  //   String email,
  //   String phone,
  //   String password,
  //   String name,
  // ) async {
  //   try {
  //     final response = await dio.post(
  //       '/auth/register',
  //       data: {
  //         'username': username,
  //         'email': email,
  //         'phone': phone,
  //         'password': password,
  //         'name': name,
  //       },
  //       options: Options(
  //         headers: {
  //           'Content-Type': 'application/x-www-form-urlencoded',
  //         },
  //       ),
  //     );

  //     return response.data['message'];
  //   } catch (e) {
  //     if (e is DioException && e.response != null) {
  //       final message = e.response?.data['message'] as String?;
  //       print('Error Message: $message');
  //       print('Error Response: ${e.response?.data}');
  //       throw Exception(message ?? 'Unknown server error');
  //     } else {
  //       print('Unknown Error: ${e.toString()}');
  //       throw Exception('Unknown error: ${e.toString()}');
  //     }
  //   }
  // }

  // @override
  // Future<ApiResponse<List<GetOtp>>> getOtpData(
  //     String userId, String method, String newMailOrPhone) async {
  //   final response = await dio.post(
  //     '/auth/otp',
  //     data: {
  //       'userId': userId,
  //       'method': method,
  //       'newMailOrPhone': newMailOrPhone,
  //     },
  //     options: Options(
  //       headers: {
  //         'Content-Type': 'application/json',
  //       },
  //     ),
  //   );

  //   return ApiResponse.fromResponse(response, (json) {
  //     return List<GetOtp>.from(json['data'].map((x) => GetOtp.fromJson(x)));
  //   });
  // }
}
