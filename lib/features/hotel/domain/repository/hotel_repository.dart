import 'package:dartz/dartz.dart';
import 'package:test_application/core/error/fauiler.dart';
import 'package:test_application/features/hotel/domain/entity/hotel_entity.dart';

abstract interface class  HotelRepository {
  Future<Either<Failure, HotelEntity>> getHotelData();
}
