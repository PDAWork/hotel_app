import 'package:dartz/dartz.dart';
import 'package:test_application/core/error/fauiler.dart';
import 'package:test_application/features/reservation/domain/entity/reservation_entity.dart';
import 'package:test_application/features/reservation/domain/repository/reservation_repository.dart';

class ReservationUseCase {
  ReservationUseCase(this._repository);

  final ReservationRepository _repository;

  Future<Either<Failure, ReservationEnitity>> call() async {
    return await _repository.getreservation();
  }
}
