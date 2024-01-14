part of 'nomer_cubit.dart';

sealed class NomerState {}

final class NomerInitial extends NomerState {}

final class NomerLoad extends NomerState {}

final class NomerError extends NomerState {}

final class NomerSuccess extends NomerState {
  final List<NomerEntity> entityList;

  NomerSuccess({required this.entityList});
}
