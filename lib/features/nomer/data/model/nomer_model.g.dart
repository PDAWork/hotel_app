// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NomerModelImpl _$$NomerModelImplFromJson(Map<String, dynamic> json) =>
    _$NomerModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      pricePer: json['price_per'] as String,
      peculiarities: (json['peculiarities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      imgUrl: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$NomerModelImplToJson(_$NomerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'price_per': instance.pricePer,
      'peculiarities': instance.peculiarities,
      'image_urls': instance.imgUrl,
    };
