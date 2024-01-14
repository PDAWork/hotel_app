import 'package:dio/dio.dart';
import 'package:test_application/core/error/exeption.dart';
import 'package:test_application/core/network/api_entrypoints.dart';
import 'package:test_application/features/hotel/data/model/hotel_model.dart';

abstract class HotelRemote {
  Future<HotelModel> hotel();
}

class HotelRemoteImpl implements HotelRemote {
  HotelRemoteImpl({required this.dio});

  final Dio dio;

  @override
  Future<HotelModel> hotel() async {
    try {
      final response = await dio.get(ApiEndpoints.hotel);
      return HotelModel.fromJson(response.data);
    } catch (_) {
      throw ServerException();
    }
  }
}
