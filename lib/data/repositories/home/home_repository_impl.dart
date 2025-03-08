import 'package:dartz/dartz.dart';
import 'package:test_clean_architecture/data/api/home/home_api.dart';
import 'package:test_clean_architecture/domain/entities/banner_home/banner_home.dart';
import 'package:test_clean_architecture/domain/repositories/home/home_repositories.dart';

import '../../../lib.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeApi api;
  final NetworkInfo networkInfo;

  HomeRepositoryImpl(this.api, this.networkInfo);
  @override
  Future<Either<Failure, List<BannerHome>>> bannerHome(
      ) async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.bannerHome();
      if (!response.success) {
        return Left(Failure.serverError(response.message));
      }
      return Right(response.data!);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }
  @override
  Future<Either<Failure,SongChart>> songChart(
      ) async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.songChart();
      if (!response.success) {
        return Left(Failure.serverError(response.message));
      }
      return Right(response.data!);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }

}