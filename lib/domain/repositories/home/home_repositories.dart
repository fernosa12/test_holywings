import 'package:dartz/dartz.dart';
import 'package:test_clean_architecture/domain/entities/banner_home/banner_home.dart';
import '../../../core/errors/errors.dart';


abstract class HomeRepository {
  Future<Either<Failure, List<BannerHome>>> bannerHome();
  // Future<Either<Failure, String>> changePassword(String userId, String password,
  //     String newPassword, String confirmPassword);
  // Future<Either<Failure, String>> register(String username, String email,
  //     String phone, String password, String name);
  // Future<Either<Failure, String>> forgotPassword(
  //   String email,
  // );
  // Future<Either<Failure, List<GetOtp>>> getOtp(
  //   String userId,
  //   String method,
  //   String newMailOrPhone,
  // );
}
