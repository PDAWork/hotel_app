import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test_application/core/network/api_entrypoints.dart';
import 'package:test_application/features/hotel/data/data_source/hotel_remote.dart';
import 'package:test_application/features/hotel/data/repository/hotel_repository_impl.dart';
import 'package:test_application/features/hotel/domain/repository/hotel_repository.dart';
import 'package:test_application/features/hotel/domain/usecase/hotel_use_case.dart';
import 'package:test_application/features/hotel/presentation/cubit/hotel_cubit.dart';
import 'package:test_application/features/nomer/data/data_source/remote/nomer_remote.dart';
import 'package:test_application/features/nomer/data/repository/nomer_repository_impl.dart';
import 'package:test_application/features/nomer/domain/repository/nomer_repository.dart';
import 'package:test_application/features/nomer/domain/use_case/nomer_use_case.dart';
import 'package:test_application/features/nomer/presentation/cubit/nomer_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc/Cubit

  sl.registerFactory(() => HotelCubit(sl()));
  sl.registerFactory(() => NomerCubit(sl()));

  // UseCases

  sl.registerLazySingleton(() => HotelUseCase(sl()));
  sl.registerLazySingleton(() => NomerUseCase(sl()));

  // Repository

  sl.registerLazySingleton<HotelRemote>(() => HotelRemoteImpl(dio: sl()));
  sl.registerLazySingleton<HotelRepository>(
    () => HotelRepositoryImpl(
      remote: sl(),
    ),
  );

  sl.registerLazySingleton<NomerRemote>(() => NomerRemoteImpl(dio: sl()));
  sl.registerLazySingleton<NomerRepository>(
    () => NomerRepositoryImpl(
      nomerRemote: sl(),
    ),
  );

  // External

  sl.registerLazySingleton(() {
    // Отменить PrettyDioLogger в release version kDebug
    return Dio(
      BaseOptions(
        baseUrl: ApiEndpoints.baseUrl,
      ),
    )..interceptors.addAll(
        [
          PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
            responseBody: true,
            error: true,
            compact: true,
            maxWidth: 90,
          ),
        ],
      );
  });
}
