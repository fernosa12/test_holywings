import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:dartz/dartz.dart';
import 'package:test_clean_architecture/core/usecase/usecase.dart';
import 'package:test_clean_architecture/domain/usecases/banner_home_usecase.dart';
import '../../../domain/entities/banner_home/banner_home.dart';
import '../../../core/errors/errors.dart';

class HomeController extends GetxController {
  final GetBannerHomeUsecase _getBannerHomeUsecase;

  HomeController(this._getBannerHomeUsecase);

  var bannerHomeList = Rxn<List<BannerHome>>(); 
  var isLoading = false.obs;
  var errorMessage = "".obs;

  @override
  void onInit() {
    super.onInit();
    fetchBannerHome();
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
}
