import 'package:dartz/dartz.dart';
import 'package:test_application/core/error/fauiler.dart';
import 'package:test_application/features/otel/domain/entity/hotel_entity.dart';

abstract class HotelRepository {
  Future<Either<Failure, HotelEntity>> getHotelData();
}
