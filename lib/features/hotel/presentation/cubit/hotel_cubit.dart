import 'package:bloc/bloc.dart';
import 'package:test_application/features/hotel/domain/entity/hotel_entity.dart';
import 'package:test_application/features/hotel/domain/usecase/hotel_use_case.dart';

part 'hotel_state.dart';

class HotelCubit extends Cubit<HotelState> {
  HotelCubit(this.useCase) : super(HotelInitial());

  final HotelUseCase useCase;

  void init() async {
    emit(HotelLoad());
    final result = await useCase.call();

    result.fold(
      (l) => emit(HotelError()),
      (entity) => emit(HotelSuccess(entity: entity)),
    );
  }
}
