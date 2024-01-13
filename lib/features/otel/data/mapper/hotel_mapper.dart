import 'package:test_application/features/otel/data/mapper/about_the_hotel_mapper.dart';
import 'package:test_application/features/otel/data/model/hotel_model.dart';
import 'package:test_application/features/otel/domain/entity/hotel_entity.dart';

extension HotelMapper on HotelModel {
  HotelEntity toEntity() {
    return HotelEntity(
        name: name,
        adress: adress,
        minimalPrice: minimalPrice,
        priceForIt: priceForIt,
        rating: rating,
        ratingName: ratingName,
        imageUrls: imageUrls,
        aboutTheHotel: aboutTheHotel.toEntity());
  }
}
