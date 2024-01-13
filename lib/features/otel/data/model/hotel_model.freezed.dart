// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotelModel _$HotelModelFromJson(Map<String, dynamic> json) {
  return _HotelModel.fromJson(json);
}

/// @nodoc
mixin _$HotelModel {
  String get name => throw _privateConstructorUsedError;
  String get adress => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimal_price')
  int get minimalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_for_it')
  String get priceForIt => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_name')
  String get ratingName => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls => throw _privateConstructorUsedError;
  @JsonKey(name: 'about_the_hotel')
  AboutTheHotelModel get aboutTheHotel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelModelCopyWith<HotelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelModelCopyWith<$Res> {
  factory $HotelModelCopyWith(
          HotelModel value, $Res Function(HotelModel) then) =
      _$HotelModelCopyWithImpl<$Res, HotelModel>;
  @useResult
  $Res call(
      {String name,
      String adress,
      @JsonKey(name: 'minimal_price') int minimalPrice,
      @JsonKey(name: 'price_for_it') String priceForIt,
      int rating,
      @JsonKey(name: 'rating_name') String ratingName,
      @JsonKey(name: 'image_urls') List<String> imageUrls,
      @JsonKey(name: 'about_the_hotel') AboutTheHotelModel aboutTheHotel});

  $AboutTheHotelModelCopyWith<$Res> get aboutTheHotel;
}

/// @nodoc
class _$HotelModelCopyWithImpl<$Res, $Val extends HotelModel>
    implements $HotelModelCopyWith<$Res> {
  _$HotelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? adress = null,
    Object? minimalPrice = null,
    Object? priceForIt = null,
    Object? rating = null,
    Object? ratingName = null,
    Object? imageUrls = null,
    Object? aboutTheHotel = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String,
      minimalPrice: null == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      priceForIt: null == priceForIt
          ? _value.priceForIt
          : priceForIt // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      aboutTheHotel: null == aboutTheHotel
          ? _value.aboutTheHotel
          : aboutTheHotel // ignore: cast_nullable_to_non_nullable
              as AboutTheHotelModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AboutTheHotelModelCopyWith<$Res> get aboutTheHotel {
    return $AboutTheHotelModelCopyWith<$Res>(_value.aboutTheHotel, (value) {
      return _then(_value.copyWith(aboutTheHotel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelModelImplCopyWith<$Res>
    implements $HotelModelCopyWith<$Res> {
  factory _$$HotelModelImplCopyWith(
          _$HotelModelImpl value, $Res Function(_$HotelModelImpl) then) =
      __$$HotelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String adress,
      @JsonKey(name: 'minimal_price') int minimalPrice,
      @JsonKey(name: 'price_for_it') String priceForIt,
      int rating,
      @JsonKey(name: 'rating_name') String ratingName,
      @JsonKey(name: 'image_urls') List<String> imageUrls,
      @JsonKey(name: 'about_the_hotel') AboutTheHotelModel aboutTheHotel});

  @override
  $AboutTheHotelModelCopyWith<$Res> get aboutTheHotel;
}

/// @nodoc
class __$$HotelModelImplCopyWithImpl<$Res>
    extends _$HotelModelCopyWithImpl<$Res, _$HotelModelImpl>
    implements _$$HotelModelImplCopyWith<$Res> {
  __$$HotelModelImplCopyWithImpl(
      _$HotelModelImpl _value, $Res Function(_$HotelModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? adress = null,
    Object? minimalPrice = null,
    Object? priceForIt = null,
    Object? rating = null,
    Object? ratingName = null,
    Object? imageUrls = null,
    Object? aboutTheHotel = null,
  }) {
    return _then(_$HotelModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String,
      minimalPrice: null == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      priceForIt: null == priceForIt
          ? _value.priceForIt
          : priceForIt // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      aboutTheHotel: null == aboutTheHotel
          ? _value.aboutTheHotel
          : aboutTheHotel // ignore: cast_nullable_to_non_nullable
              as AboutTheHotelModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelModelImpl implements _HotelModel {
  const _$HotelModelImpl(
      {required this.name,
      required this.adress,
      @JsonKey(name: 'minimal_price') required this.minimalPrice,
      @JsonKey(name: 'price_for_it') required this.priceForIt,
      required this.rating,
      @JsonKey(name: 'rating_name') required this.ratingName,
      @JsonKey(name: 'image_urls') required final List<String> imageUrls,
      @JsonKey(name: 'about_the_hotel') required this.aboutTheHotel})
      : _imageUrls = imageUrls;

  factory _$HotelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelModelImplFromJson(json);

  @override
  final String name;
  @override
  final String adress;
  @override
  @JsonKey(name: 'minimal_price')
  final int minimalPrice;
  @override
  @JsonKey(name: 'price_for_it')
  final String priceForIt;
  @override
  final int rating;
  @override
  @JsonKey(name: 'rating_name')
  final String ratingName;
  final List<String> _imageUrls;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  @JsonKey(name: 'about_the_hotel')
  final AboutTheHotelModel aboutTheHotel;

  @override
  String toString() {
    return 'HotelModel(name: $name, adress: $adress, minimalPrice: $minimalPrice, priceForIt: $priceForIt, rating: $rating, ratingName: $ratingName, imageUrls: $imageUrls, aboutTheHotel: $aboutTheHotel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.adress, adress) || other.adress == adress) &&
            (identical(other.minimalPrice, minimalPrice) ||
                other.minimalPrice == minimalPrice) &&
            (identical(other.priceForIt, priceForIt) ||
                other.priceForIt == priceForIt) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingName, ratingName) ||
                other.ratingName == ratingName) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.aboutTheHotel, aboutTheHotel) ||
                other.aboutTheHotel == aboutTheHotel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      adress,
      minimalPrice,
      priceForIt,
      rating,
      ratingName,
      const DeepCollectionEquality().hash(_imageUrls),
      aboutTheHotel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelModelImplCopyWith<_$HotelModelImpl> get copyWith =>
      __$$HotelModelImplCopyWithImpl<_$HotelModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelModelImplToJson(
      this,
    );
  }
}

abstract class _HotelModel implements HotelModel {
  const factory _HotelModel(
      {required final String name,
      required final String adress,
      @JsonKey(name: 'minimal_price') required final int minimalPrice,
      @JsonKey(name: 'price_for_it') required final String priceForIt,
      required final int rating,
      @JsonKey(name: 'rating_name') required final String ratingName,
      @JsonKey(name: 'image_urls') required final List<String> imageUrls,
      @JsonKey(name: 'about_the_hotel')
      required final AboutTheHotelModel aboutTheHotel}) = _$HotelModelImpl;

  factory _HotelModel.fromJson(Map<String, dynamic> json) =
      _$HotelModelImpl.fromJson;

  @override
  String get name;
  @override
  String get adress;
  @override
  @JsonKey(name: 'minimal_price')
  int get minimalPrice;
  @override
  @JsonKey(name: 'price_for_it')
  String get priceForIt;
  @override
  int get rating;
  @override
  @JsonKey(name: 'rating_name')
  String get ratingName;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls;
  @override
  @JsonKey(name: 'about_the_hotel')
  AboutTheHotelModel get aboutTheHotel;
  @override
  @JsonKey(ignore: true)
  _$$HotelModelImplCopyWith<_$HotelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
