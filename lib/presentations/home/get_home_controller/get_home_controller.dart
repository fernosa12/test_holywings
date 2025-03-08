import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:dartz/dartz.dart';
import 'package:test_clean_architecture/core/usecase/usecase.dart';
import 'package:test_clean_architecture/domain/domain.dart';

import '../../../domain/entities/banner_home/banner_home.dart';
import '../../../core/errors/errors.dart';

class HomeController extends GetxController {
  final GetBannerHomeUsecase _getBannerHomeUsecase;
  final SongChartUsecase _songChartUsecase;

  HomeController(this._getBannerHomeUsecase,this._songChartUsecase);
var currentPageIndex = 0.obs;
  var bannerHomeList = Rxn<List<BannerHome>>(); 
  var songChart = Rxn<SongChart>();
  var isLoading = false.obs;
  var errorMessage = "".obs;

  @override
  void onInit() {
    super.onInit();
    fetchBannerHome();
     fetchSongChart(); 
  }

  void fetchBannerHome() async {
    isLoading.value = true;
    errorMessage.value = "";

    final Either<Failure, List<BannerHome>> result = await _getBannerHomeUsecase(NoParams());

    result.fold(
      (failure) {
       Text('Data kosong');
      },
      (banners) {
        bannerHomeList.value = banners; 
      },
    );

    isLoading.value = false;
  }
   void fetchSongChart() async {
    isLoading.value = true;
    errorMessage.value = "";

    final Either<Failure, SongChart> result = await _songChartUsecase(NoParams());

    result.fold(
      (failure) {
        errorMessage.value = failure.message; 
      },
      (chart) {
        songChart.value = chart; 
      },
    );

    isLoading.value = false;
  }
}
