import 'package:freezed_annotation/freezed_annotation.dart';

part "about_the_hotel_model.freezed.dart";
part "about_the_hotel_model.g.dart";

@freezed
class AboutTheHotelModel with _$AboutTheHotelModel {
  const factory AboutTheHotelModel({
    required final String description,
    required final List<String> peculiarities,
  }) = _AboutTheHotelModel;

  factory AboutTheHotelModel.fromJson(Map<String, dynamic> json) =>
      _$AboutTheHotelModelFromJson(json);
}
