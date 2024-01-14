import 'package:dartz/dartz.dart';
import 'package:test_application/core/error/exeption.dart';
import 'package:test_application/core/error/fauiler.dart';
import 'package:test_application/features/nomer/data/data_source/remote/nomer_remote.dart';
import 'package:test_application/features/nomer/data/mapper/nomer_mapper.dart';
import 'package:test_application/features/nomer/domain/entity/nomer_entity.dart';
import 'package:test_application/features/nomer/domain/repository/nomer_repository.dart';

final class NomerRepositoryImpl implements NomerRepository {
  final NomerRemote nomerRemote;

  NomerRepositoryImpl({required this.nomerRemote});

  @override
  Future<Either<Failure, List<NomerEntity>>> getNomer() async {
    try {
      final data = await nomerRemote.getNomer();
      return Right(data.map((e) => e.toEntity()).toList());
    } on ServerException catch (_) {
      return Left(ServerFailure());
    }
  }
}
