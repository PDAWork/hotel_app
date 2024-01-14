// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nomer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NomerModel _$NomerModelFromJson(Map<String, dynamic> json) {
  return _NomerModel.fromJson(json);
}

/// @nodoc
mixin _$NomerModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per')
  String get pricePer => throw _privateConstructorUsedError;
  List<String> get peculiarities => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_urls')
  List<String> get imgUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NomerModelCopyWith<NomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NomerModelCopyWith<$Res> {
  factory $NomerModelCopyWith(
          NomerModel value, $Res Function(NomerModel) then) =
      _$NomerModelCopyWithImpl<$Res, NomerModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int price,
      @JsonKey(name: 'price_per') String pricePer,
      List<String> peculiarities,
      @JsonKey(name: 'image_urls') List<String> imgUrl});
}

/// @nodoc
class _$NomerModelCopyWithImpl<$Res, $Val extends NomerModel>
    implements $NomerModelCopyWith<$Res> {
  _$NomerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? pricePer = null,
    Object? peculiarities = null,
    Object? imgUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      pricePer: null == pricePer
          ? _value.pricePer
          : pricePer // ignore: cast_nullable_to_non_nullable
              as String,
      peculiarities: null == peculiarities
          ? _value.peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NomerModelImplCopyWith<$Res>
    implements $NomerModelCopyWith<$Res> {
  factory _$$NomerModelImplCopyWith(
          _$NomerModelImpl value, $Res Function(_$NomerModelImpl) then) =
      __$$NomerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int price,
      @JsonKey(name: 'price_per') String pricePer,
      List<String> peculiarities,
      @JsonKey(name: 'image_urls') List<String> imgUrl});
}

/// @nodoc
class __$$NomerModelImplCopyWithImpl<$Res>
    extends _$NomerModelCopyWithImpl<$Res, _$NomerModelImpl>
    implements _$$NomerModelImplCopyWith<$Res> {
  __$$NomerModelImplCopyWithImpl(
      _$NomerModelImpl _value, $Res Function(_$NomerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? pricePer = null,
    Object? peculiarities = null,
    Object? imgUrl = null,
  }) {
    return _then(_$NomerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      pricePer: null == pricePer
          ? _value.pricePer
          : pricePer // ignore: cast_nullable_to_non_nullable
              as String,
      peculiarities: null == peculiarities
          ? _value._peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      imgUrl: null == imgUrl
          ? _value._imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NomerModelImpl implements _NomerModel {
  const _$NomerModelImpl(
      {required this.id,
      required this.name,
      required this.price,
      @JsonKey(name: 'price_per') required this.pricePer,
      required final List<String> peculiarities,
      @JsonKey(name: 'image_urls') required final List<String> imgUrl})
      : _peculiarities = peculiarities,
        _imgUrl = imgUrl;

  factory _$NomerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NomerModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int price;
  @override
  @JsonKey(name: 'price_per')
  final String pricePer;
  final List<String> _peculiarities;
  @override
  List<String> get peculiarities {
    if (_peculiarities is EqualUnmodifiableListView) return _peculiarities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_peculiarities);
  }

  final List<String> _imgUrl;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imgUrl {
    if (_imgUrl is EqualUnmodifiableListView) return _imgUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imgUrl);
  }

  @override
  String toString() {
    return 'NomerModel(id: $id, name: $name, price: $price, pricePer: $pricePer, peculiarities: $peculiarities, imgUrl: $imgUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NomerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.pricePer, pricePer) ||
                other.pricePer == pricePer) &&
            const DeepCollectionEquality()
                .equals(other._peculiarities, _peculiarities) &&
            const DeepCollectionEquality().equals(other._imgUrl, _imgUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      pricePer,
      const DeepCollectionEquality().hash(_peculiarities),
      const DeepCollectionEquality().hash(_imgUrl));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NomerModelImplCopyWith<_$NomerModelImpl> get copyWith =>
      __$$NomerModelImplCopyWithImpl<_$NomerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NomerModelImplToJson(
      this,
    );
  }
}

abstract class _NomerModel implements NomerModel {
  const factory _NomerModel(
          {required final int id,
          required final String name,
          required final int price,
          @JsonKey(name: 'price_per') required final String pricePer,
          required final List<String> peculiarities,
          @JsonKey(name: 'image_urls') required final List<String> imgUrl}) =
      _$NomerModelImpl;

  factory _NomerModel.fromJson(Map<String, dynamic> json) =
      _$NomerModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get price;
  @override
  @JsonKey(name: 'price_per')
  String get pricePer;
  @override
  List<String> get peculiarities;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imgUrl;
  @override
  @JsonKey(ignore: true)
  _$$NomerModelImplCopyWith<_$NomerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
