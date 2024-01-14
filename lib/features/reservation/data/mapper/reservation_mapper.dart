import 'package:test_application/features/reservation/data/model/reservation_model.dart';
import 'package:test_application/features/reservation/domain/entity/reservation_entity.dart';

extension ReservationMapper on ReservationModel {
  ReservationEnitity toEntity() {
    return ReservationEnitity(
      id: id,
      hotelName: hotelName,
      hotelAdress: hotelAdress,
      horating: horating,
      ratingName: ratingName,
      departure: departure,
      arrivalCountry: arrivalCountry,
      tourDateStart: tourDateStart,
      tourDateStop: tourDateStop,
      numberOfNights: numberOfNights,
      room: room,
      nutrition: nutrition,
      tourPrice: tourPrice,
      fuelCharge: fuelCharge,
      serviceCharge: serviceCharge,
      payPrice: tourPrice + fuelCharge + serviceCharge,
    );
  }
}
