import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_application/features/reservation/domain/entity/reservation_entity.dart';
import 'package:test_application/features/reservation/domain/use_case/reservation_use_case.dart';

part 'reservation_state.dart';

class ReservationCubit extends Cubit<ReservationState> {
  ReservationCubit(this.useCase) : super(ReservationInitial());

  final ReservationUseCase useCase;

  void init() async {
    emit(ReservationLoad());

    final result = await useCase.call();

    result.fold(
      (l) => emit(ReservationError()),
      (entity) => emit(ReservationSucces(enitity: entity)),
    );
  }
}
