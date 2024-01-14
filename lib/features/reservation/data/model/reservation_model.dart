import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation_model.freezed.dart';
part 'reservation_model.g.dart';

@freezed
class ReservationModel with _$ReservationModel {
  const factory ReservationModel({
    required final int id,
    @JsonKey(name: 'hotel_name') required final String hotelName,
    @JsonKey(name: 'hotel_adress') required final String hotelAdress,
    required final int horating,
    @JsonKey(name: 'rating_name') required final String ratingName,
    required final String departure,
    @JsonKey(name: 'arrival_country') required final String arrivalCountry,
    @JsonKey(name: 'tour_date_start') required final String tourDateStart,
    @JsonKey(name: 'tour_date_stop') required final String tourDateStop,
    @JsonKey(name: 'number_of_nights') required final int numberOfNights,
    required final String room,
    required final String nutrition,
    @JsonKey(name: 'tour_price') required final int tourPrice,
    @JsonKey(name: 'fuel_charge') required final int fuelCharge,
    @JsonKey(name: 'service_charge') required final int serviceCharge,
  }) = _ReservationModel;

  factory ReservationModel.fromJson(Map<String, dynamic> json) =>
      _$ReservationModelFromJson(json);
}
