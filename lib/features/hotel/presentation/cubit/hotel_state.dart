part of 'hotel_cubit.dart';

sealed class HotelState {}

final class HotelInitial extends HotelState {}

final class HotelLoad extends HotelState {}

final class HotelError extends HotelState {}

final class HotelSuccess extends HotelState {
  final HotelEntity entity;

  HotelSuccess({required this.entity});
}
