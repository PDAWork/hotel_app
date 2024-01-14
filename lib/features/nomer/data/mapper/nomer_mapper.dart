import 'package:test_application/features/nomer/data/model/nomer_model.dart';
import 'package:test_application/features/nomer/domain/entity/nomer_entity.dart';

extension NomerMapper on NomerModel {
  NomerEntity toEntity() {
    return NomerEntity(
      id: id,
      name: name,
      price: price,
      pricePer: pricePer,
      peculiarities: peculiarities,
      imgUrl: imgUrl,
    );
  }
}
