import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_application/features/nomer/domain/entity/nomer_entity.dart';
import 'package:test_application/features/nomer/domain/use_case/nomer_use_case.dart';

part 'nomer_state.dart';

class NomerCubit extends Cubit<NomerState> {
  NomerCubit(this.nomerUseCase) : super(NomerInitial());

  final NomerUseCase nomerUseCase;

  void init() async {
    emit(NomerLoad());

    final result = await nomerUseCase.call();

    result.fold(
      (l) => emit(NomerError()),
      (entityList) => emit(
        NomerSuccess(entityList: entityList),
      ),
    );
  }
}
