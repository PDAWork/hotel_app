import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test_application/core/network/api_entrypoints.dart';
import 'package:test_application/features/otel/data/data_source/hotel_remote.dart';
import 'package:test_application/features/otel/data/repository/hotel_repository_impl.dart';
import 'package:test_application/features/otel/domain/repository/hotel_repository.dart';
import 'package:test_application/features/otel/domain/usecase/hotel_use_case.dart';
import 'package:test_application/features/otel/presentation/cubit/hotel_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc/Cubit

  sl.registerFactory(() => HotelCubit(sl()));

  // UseCases

  sl.registerLazySingleton(() => HotelUseCase(sl()));

  // Repository

  sl.registerLazySingleton<HotelRemote>(() => HotelRemoteImpl(dio: sl()));
  sl.registerLazySingleton<HotelRepository>(
    () => HotelRepositoryImpl(
      remote: sl(),
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
