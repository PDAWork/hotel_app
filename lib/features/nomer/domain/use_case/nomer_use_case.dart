import 'package:dartz/dartz.dart';
import 'package:test_application/core/error/fauiler.dart';
import 'package:test_application/features/nomer/domain/entity/nomer_entity.dart';
import 'package:test_application/features/nomer/domain/repository/nomer_repository.dart';

final class NomerUseCase {
  final NomerRepository _nomerRepository;

  NomerUseCase(this._nomerRepository);

  Future<Either<Failure, List<NomerEntity>>> call() async {
    return _nomerRepository.getNomer();
  }
}
