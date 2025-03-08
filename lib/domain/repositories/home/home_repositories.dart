import 'package:dartz/dartz.dart';
import 'package:test_clean_architecture/domain/entities/banner_home/banner_home.dart';
import 'package:test_clean_architecture/domain/entities/song_chart/song_chart.dart';
import '../../../core/errors/errors.dart';


abstract class HomeRepository {
  Future<Either<Failure, List<BannerHome>>> bannerHome();
  Future<Either<Failure, SongChart>> songChart();
  
}
