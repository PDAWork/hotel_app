part of 'reservation_cubit.dart';

sealed class ReservationState {}

final class ReservationInitial extends ReservationState {}

final class ReservationLoad extends ReservationState {}

final class ReservationError extends ReservationState {}

final class ReservationSucces extends ReservationState {
  final ReservationEnitity enitity;

  ReservationSucces({required this.enitity});
}
