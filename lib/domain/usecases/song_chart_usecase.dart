import 'package:dartz/dartz.dart';
import 'package:test_clean_architecture/core/errors/failure.dart';
import 'package:test_clean_architecture/core/usecase/usecase.dart';
import 'package:test_clean_architecture/domain/entities/song_chart/song_chart.dart';

import '../repositories/home/home_repositories.dart';

class SongChartUsecase implements UseCase <SongChart, NoParams> {
  final HomeRepository repository;

  SongChartUsecase(this.repository);

  @override
  Future<Either<Failure, SongChart>> call(NoParams noParams) async {
    return await repository.songChart();
  }
}
