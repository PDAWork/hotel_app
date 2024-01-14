import 'package:dartz/dartz.dart';
import 'package:test_application/core/error/exeption.dart';
import 'package:test_application/core/error/fauiler.dart';
import 'package:test_application/features/hotel/data/data_source/hotel_remote.dart';
import 'package:test_application/features/hotel/data/mapper/hotel_mapper.dart';
import 'package:test_application/features/hotel/domain/entity/hotel_entity.dart';
import 'package:test_application/features/hotel/domain/repository/hotel_repository.dart';

class HotelRepositoryImpl implements HotelRepository {
  final HotelRemote remote;

  HotelRepositoryImpl({required this.remote});

  @override
  Future<Either<Failure, HotelEntity>> getHotelData() async {
    try {
      final data = await remote.hotel();
      return Right(data.toEntity());
    } on ServerException catch (_) {
      return Left(ServerFailure());
    }
  }
}
