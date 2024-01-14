import 'package:dartz/dartz.dart';
import 'package:test_application/core/error/fauiler.dart';
import 'package:test_application/features/reservation/domain/entity/reservation_entity.dart';

abstract interface class ReservationRepository {
  Future<Either<Failure, ReservationEnitity>> getreservation();
}
