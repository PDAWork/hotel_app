import 'package:dartz/dartz.dart';
import 'package:test_application/core/error/fauiler.dart';
import 'package:test_application/features/nomer/domain/entity/nomer_entity.dart';

abstract interface class NomerRepository {
  Future<Either<Failure, List<NomerEntity>>> getNomer();
}
