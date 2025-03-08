import 'package:dartz/dartz.dart';
import 'package:test_clean_architecture/core/errors/failure.dart';
import 'package:test_clean_architecture/core/usecase/usecase.dart';
import 'package:test_clean_architecture/domain/entities/banner_home/banner_home.dart';

import '../repositories/home/home_repositories.dart';

class GetBannerHomeUsecase implements UseCase<List<BannerHome>, NoParams> {
  final HomeRepository repository;

  GetBannerHomeUsecase(this.repository);

  @override
  Future<Either<Failure, List<BannerHome>>> call(NoParams noParams) async {
    return await repository.bannerHome();
  }
}
