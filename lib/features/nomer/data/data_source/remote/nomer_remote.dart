import 'package:dio/dio.dart';
import 'package:test_application/core/error/exeption.dart';
import 'package:test_application/core/network/api_entrypoints.dart';
import 'package:test_application/features/nomer/data/model/nomer_model.dart';

abstract interface class NomerRemote {
  Future<List<NomerModel>> getNomer();
}

final class NomerRemoteImpl implements NomerRemote {
  final Dio dio;

  NomerRemoteImpl({required this.dio});

  @override
  Future<List<NomerModel>> getNomer() async {
    try {
      final response = await dio.get(ApiEndpoints.nomer);
      return (response.data['rooms'] as List)
          .map((e) => NomerModel.fromJson(e))
          .toList();
    } catch (_) {
      throw ServerException();
    }
  }
}
