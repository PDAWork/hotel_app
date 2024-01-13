import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_application/features/otel/data/model/about_the_hotel_model.dart';

part "hotel_model.freezed.dart";
part "hotel_model.g.dart";

@freezed
class HotelModel with _$HotelModel {
  const factory HotelModel({
    required final String name,
    required final String adress,
    @JsonKey(name: 'minimal_price') required final int minimalPrice,
    @JsonKey(name: 'price_for_it') required final String priceForIt,
    required int rating,
    @JsonKey(name: 'rating_name') required final String ratingName,
    @JsonKey(name: 'image_urls') required final List<String> imageUrls,
    @JsonKey(name: 'about_the_hotel') required AboutTheHotelModel aboutTheHotel,
  }) = _HotelModel;

  factory HotelModel.fromJson(Map<String, dynamic> json) =>
      _$HotelModelFromJson(json);
}
