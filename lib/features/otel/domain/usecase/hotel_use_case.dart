import 'package:dartz/dartz.dart';
import 'package:test_application/core/error/fauiler.dart';
import 'package:test_application/features/otel/domain/entity/hotel_entity.dart';
import 'package:test_application/features/otel/domain/repository/hotel_repository.dart';

class HotelUseCase {
  final HotelRepository _repository;

  HotelUseCase(this._repository);

  Future<Either<Failure, HotelEntity>> call() async {
    return await _repository.getHotelData();
  }
}
