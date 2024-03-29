import 'package:test_application/features/hotel/data/model/about_the_hotel_model.dart';
import 'package:test_application/features/hotel/domain/entity/about_the_hotel_entity.dart';

extension AboutTheHotelMapper on AboutTheHotelModel {
  AboutTheHotelEntity toEntity() {
    return AboutTheHotelEntity(
        description: description, peculiarities: peculiarities);
  }
}
