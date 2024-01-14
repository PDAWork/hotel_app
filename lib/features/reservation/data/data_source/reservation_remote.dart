import 'package:dio/dio.dart';
import 'package:test_application/core/error/exeption.dart';
import 'package:test_application/core/network/api_entrypoints.dart';
import 'package:test_application/features/reservation/data/model/reservation_model.dart';

abstract interface class ReservationRemote {
  Future<ReservationModel> getReservation();
}

final class ReservationRemoteImpl implements ReservationRemote {
  final Dio dio;

  ReservationRemoteImpl({required this.dio});

  @override
  Future<ReservationModel> getReservation() async {
    try {
      final response = await dio.get(ApiEndpoints.reservation);
      return ReservationModel.fromJson(response.data);
    } catch (_) {
      throw ServerException();
    }
  }
}
