import 'package:freezed_annotation/freezed_annotation.dart';

part 'nomer_model.freezed.dart';
part 'nomer_model.g.dart';

@freezed
class NomerModel with _$NomerModel {
  const factory NomerModel({
    required final int id,
    required final String name,
    required final int price,
    @JsonKey(name: 'price_per') required final String pricePer,
    required final List<String> peculiarities,
  @JsonKey(name: 'image_urls')  required final List<String> imgUrl,
  }) = _NomerModel;

  factory NomerModel.fromJson(Map<String, dynamic> json) =>
      _$NomerModelFromJson(json);
}
