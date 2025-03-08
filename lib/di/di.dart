import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:test_clean_architecture/data/api/home/home_api.dart';
import 'package:test_clean_architecture/domain/repositories/home/home_repositories.dart';
import 'package:test_clean_architecture/presentations/home/get_home_controller/get_home_controller.dart';

// import '../domain/usecases/change_password_usecase.dart';
// import '../domain/usecases/get_banners_usecase.dart';
// import '../domain/usecases/get_my_searches_usecase.dart';
// import '../domain/usecases/get_saldo_usecase.dart';
// import '../domain/usecases/get_tos_usecase.dart';
// import '../domain/usecases/get_wishlist_usecase.dart';
import '../lib.dart';
// import '../presentations/category/cubit/category_cubit.dart';
// import '../presentations/feedback/cubit/feedback_cubit.dart';
// import '../presentations/search/cubit/search_cubit.dart';
// import '../presentations/transaction/cubit/transaction_cubit.dart';
// import '../presentations/wishlist/cubit/wishlist_cubit.dart';

final di = GetIt.I;

setupInjection() {
  try {
    _utils();
    _datasources();
    _repositories();
    _useCases();
    _controllers();
  } catch (e) {
    print(e);
  }
}

void _datasources() {
  di.registerSingleton<AuthApi>(AuthApiImpl(di()));
  di.registerSingleton<HomeApi>(HomeApiImpl(di()));
}

void _repositories() {
  // _repositories
  di.registerSingleton<AuthRepository>(AuthRepositoryImpl(di(), di()));
  di.registerSingleton<HomeRepository>(HomeRepositoryImpl(di(), di()));
  
}

void _useCases() {
  // _useCases
  di.registerSingleton<LoginUseCase>(LoginUseCase(di()));
  di.registerSingleton<GetBannerHomeUsecase>(GetBannerHomeUsecase(di()));
  di.registerSingleton<SongChartUsecase>(SongChartUsecase(di()));
}

void _controllers() {
  // di.registerSingleton<AuthCubit>(AuthCubit(
  //   di(),
  // ));
  di.registerLazySingleton(() => HomeController(di(),di())); 
  
  // di.registerSingleton<SettingAddressProfileCubit>(
  //     SettingAddressProfileCubit(di(), di(), di(), di()));

  // di.registerSingleton<SettingBankProfileCubit>(SettingBankProfileCubit(
  //   di(),
  //   di(),
  //   di(),
  // ));
  // di.registerSingleton<TransactionCubit>(TransactionCubit(
  //   di(),
  // ));
  // di.registerSingleton<TermOfServiceCubit>(TermOfServiceCubit(
  //   di(),
  // ));

  // di.registerFactory(() => CategoryCubit(di(), di()));
  // di.registerFactory(() => ServicesCubit(di()));
  // di.registerFactory(() => SearchCubit());
  // di.registerSingleton(WishlistCubit(di(), di(), di()));
  // di.registerSingleton<FeedbackCubit>(FeedbackCubit(
  //   di(),
  //   di(),
  //   di(),
  //   di(),
  //   di(),
  //   di(),
  // ));
  // di.registerSingleton<SellerReplyTemplateCubit>(
  //     SellerReplyTemplateCubit(di(), di(), di(), di(), di()));
  // // di.registerFactory<ProfileCubit>()  // di.registerSingleton<AddSettingBankCubit>(AddSettingBankCubit(
  // //   di(),
  // // ));
  // // di.registerFactory<ProfileCubit>()
  // di.registerFactory(() => HomeCubit(di(), di(), di(), di(), di(), di(), di()));
  // di.registerFactory(() => TermOfServiceCubit(di()));
}

void _utils() {
  // _utils
  di.registerLazySingleton(
    () {
      final dio = Dio();
      dio.options.baseUrl = AppConfig.baseUrl;
      // dio.interceptors.add(DioTokenInterceptor(di.call, di()));
      dio.interceptors.add(LogInterceptor());
      return dio;
    },
    // instanceName: 'dio_for_api',
  );
  // di.registerLazySingleton(
  //   () {
  //     final dio = Dio();
  //     dio.options.baseUrl = AppConfig.baseUrl;
  //     dio.interceptors.add(LogInterceptor());
  //     return dio;
  //   },
  //   instanceName: 'dio_for_regular',
  // );
  di.registerSingleton(Connectivity());
  di.registerSingleton<AppRouter>(AppRouter());
  di.registerSingleton<NetworkInfo>(NetworkInfoImpl(di()));
}
