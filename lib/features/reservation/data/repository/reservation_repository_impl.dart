import 'package:dartz/dartz.dart';
import 'package:test_application/core/error/exeption.dart';
import 'package:test_application/core/error/fauiler.dart';
import 'package:test_application/features/reservation/data/data_source/reservation_remote.dart';
import 'package:test_application/features/reservation/data/mapper/reservation_mapper.dart';
import 'package:test_application/features/reservation/domain/entity/reservation_entity.dart';
import 'package:test_application/features/reservation/domain/repository/reservation_repository.dart';

class ReservationRepositoryImpl implements ReservationRepository {
  ReservationRepositoryImpl({required this.remote});

  final ReservationRemote remote;

  @override
  Future<Either<Failure, ReservationEnitity>> getreservation() async {
    try {
      final data = await remote.getReservation();
      return Right(data.toEntity());
    } on ServerException catch (_) {
      return Left(ServerFailure());
    }
  }
}
