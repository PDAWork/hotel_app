// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReservationModel _$ReservationModelFromJson(Map<String, dynamic> json) {
  return _ReservationModel.fromJson(json);
}

/// @nodoc
mixin _$ReservationModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_name')
  String get hotelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_adress')
  String get hotelAdress => throw _privateConstructorUsedError;
  int get horating => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_name')
  String get ratingName => throw _privateConstructorUsedError;
  String get departure => throw _privateConstructorUsedError;
  @JsonKey(name: 'arrival_country')
  String get arrivalCountry => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_date_start')
  String get tourDateStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_date_stop')
  String get tourDateStop => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_nights')
  int get numberOfNights => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;
  String get nutrition => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_price')
  int get tourPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'fuel_charge')
  int get fuelCharge => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_charge')
  int get serviceCharge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReservationModelCopyWith<ReservationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationModelCopyWith<$Res> {
  factory $ReservationModelCopyWith(
          ReservationModel value, $Res Function(ReservationModel) then) =
      _$ReservationModelCopyWithImpl<$Res, ReservationModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'hotel_name') String hotelName,
      @JsonKey(name: 'hotel_adress') String hotelAdress,
      int horating,
      @JsonKey(name: 'rating_name') String ratingName,
      String departure,
      @JsonKey(name: 'arrival_country') String arrivalCountry,
      @JsonKey(name: 'tour_date_start') String tourDateStart,
      @JsonKey(name: 'tour_date_stop') String tourDateStop,
      @JsonKey(name: 'number_of_nights') int numberOfNights,
      String room,
      String nutrition,
      @JsonKey(name: 'tour_price') int tourPrice,
      @JsonKey(name: 'fuel_charge') int fuelCharge,
      @JsonKey(name: 'service_charge') int serviceCharge});
}

/// @nodoc
class _$ReservationModelCopyWithImpl<$Res, $Val extends ReservationModel>
    implements $ReservationModelCopyWith<$Res> {
  _$ReservationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hotelName = null,
    Object? hotelAdress = null,
    Object? horating = null,
    Object? ratingName = null,
    Object? departure = null,
    Object? arrivalCountry = null,
    Object? tourDateStart = null,
    Object? tourDateStop = null,
    Object? numberOfNights = null,
    Object? room = null,
    Object? nutrition = null,
    Object? tourPrice = null,
    Object? fuelCharge = null,
    Object? serviceCharge = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hotelName: null == hotelName
          ? _value.hotelName
          : hotelName // ignore: cast_nullable_to_non_nullable
              as String,
      hotelAdress: null == hotelAdress
          ? _value.hotelAdress
          : hotelAdress // ignore: cast_nullable_to_non_nullable
              as String,
      horating: null == horating
          ? _value.horating
          : horating // ignore: cast_nullable_to_non_nullable
              as int,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalCountry: null == arrivalCountry
          ? _value.arrivalCountry
          : arrivalCountry // ignore: cast_nullable_to_non_nullable
              as String,
      tourDateStart: null == tourDateStart
          ? _value.tourDateStart
          : tourDateStart // ignore: cast_nullable_to_non_nullable
              as String,
      tourDateStop: null == tourDateStop
          ? _value.tourDateStop
          : tourDateStop // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfNights: null == numberOfNights
          ? _value.numberOfNights
          : numberOfNights // ignore: cast_nullable_to_non_nullable
              as int,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as String,
      tourPrice: null == tourPrice
          ? _value.tourPrice
          : tourPrice // ignore: cast_nullable_to_non_nullable
              as int,
      fuelCharge: null == fuelCharge
          ? _value.fuelCharge
          : fuelCharge // ignore: cast_nullable_to_non_nullable
              as int,
      serviceCharge: null == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReservationModelImplCopyWith<$Res>
    implements $ReservationModelCopyWith<$Res> {
  factory _$$ReservationModelImplCopyWith(_$ReservationModelImpl value,
          $Res Function(_$ReservationModelImpl) then) =
      __$$ReservationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'hotel_name') String hotelName,
      @JsonKey(name: 'hotel_adress') String hotelAdress,
      int horating,
      @JsonKey(name: 'rating_name') String ratingName,
      String departure,
      @JsonKey(name: 'arrival_country') String arrivalCountry,
      @JsonKey(name: 'tour_date_start') String tourDateStart,
      @JsonKey(name: 'tour_date_stop') String tourDateStop,
      @JsonKey(name: 'number_of_nights') int numberOfNights,
      String room,
      String nutrition,
      @JsonKey(name: 'tour_price') int tourPrice,
      @JsonKey(name: 'fuel_charge') int fuelCharge,
      @JsonKey(name: 'service_charge') int serviceCharge});
}

/// @nodoc
class __$$ReservationModelImplCopyWithImpl<$Res>
    extends _$ReservationModelCopyWithImpl<$Res, _$ReservationModelImpl>
    implements _$$ReservationModelImplCopyWith<$Res> {
  __$$ReservationModelImplCopyWithImpl(_$ReservationModelImpl _value,
      $Res Function(_$ReservationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hotelName = null,
    Object? hotelAdress = null,
    Object? horating = null,
    Object? ratingName = null,
    Object? departure = null,
    Object? arrivalCountry = null,
    Object? tourDateStart = null,
    Object? tourDateStop = null,
    Object? numberOfNights = null,
    Object? room = null,
    Object? nutrition = null,
    Object? tourPrice = null,
    Object? fuelCharge = null,
    Object? serviceCharge = null,
  }) {
    return _then(_$ReservationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hotelName: null == hotelName
          ? _value.hotelName
          : hotelName // ignore: cast_nullable_to_non_nullable
              as String,
      hotelAdress: null == hotelAdress
          ? _value.hotelAdress
          : hotelAdress // ignore: cast_nullable_to_non_nullable
              as String,
      horating: null == horating
          ? _value.horating
          : horating // ignore: cast_nullable_to_non_nullable
              as int,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalCountry: null == arrivalCountry
          ? _value.arrivalCountry
          : arrivalCountry // ignore: cast_nullable_to_non_nullable
              as String,
      tourDateStart: null == tourDateStart
          ? _value.tourDateStart
          : tourDateStart // ignore: cast_nullable_to_non_nullable
              as String,
      tourDateStop: null == tourDateStop
          ? _value.tourDateStop
          : tourDateStop // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfNights: null == numberOfNights
          ? _value.numberOfNights
          : numberOfNights // ignore: cast_nullable_to_non_nullable
              as int,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as String,
      tourPrice: null == tourPrice
          ? _value.tourPrice
          : tourPrice // ignore: cast_nullable_to_non_nullable
              as int,
      fuelCharge: null == fuelCharge
          ? _value.fuelCharge
          : fuelCharge // ignore: cast_nullable_to_non_nullable
              as int,
      serviceCharge: null == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReservationModelImpl implements _ReservationModel {
  const _$ReservationModelImpl(
      {required this.id,
      @JsonKey(name: 'hotel_name') required this.hotelName,
      @JsonKey(name: 'hotel_adress') required this.hotelAdress,
      required this.horating,
      @JsonKey(name: 'rating_name') required this.ratingName,
      required this.departure,
      @JsonKey(name: 'arrival_country') required this.arrivalCountry,
      @JsonKey(name: 'tour_date_start') required this.tourDateStart,
      @JsonKey(name: 'tour_date_stop') required this.tourDateStop,
      @JsonKey(name: 'number_of_nights') required this.numberOfNights,
      required this.room,
      required this.nutrition,
      @JsonKey(name: 'tour_price') required this.tourPrice,
      @JsonKey(name: 'fuel_charge') required this.fuelCharge,
      @JsonKey(name: 'service_charge') required this.serviceCharge});

  factory _$ReservationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReservationModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'hotel_name')
  final String hotelName;
  @override
  @JsonKey(name: 'hotel_adress')
  final String hotelAdress;
  @override
  final int horating;
  @override
  @JsonKey(name: 'rating_name')
  final String ratingName;
  @override
  final String departure;
  @override
  @JsonKey(name: 'arrival_country')
  final String arrivalCountry;
  @override
  @JsonKey(name: 'tour_date_start')
  final String tourDateStart;
  @override
  @JsonKey(name: 'tour_date_stop')
  final String tourDateStop;
  @override
  @JsonKey(name: 'number_of_nights')
  final int numberOfNights;
  @override
  final String room;
  @override
  final String nutrition;
  @override
  @JsonKey(name: 'tour_price')
  final int tourPrice;
  @override
  @JsonKey(name: 'fuel_charge')
  final int fuelCharge;
  @override
  @JsonKey(name: 'service_charge')
  final int serviceCharge;

  @override
  String toString() {
    return 'ReservationModel(id: $id, hotelName: $hotelName, hotelAdress: $hotelAdress, horating: $horating, ratingName: $ratingName, departure: $departure, arrivalCountry: $arrivalCountry, tourDateStart: $tourDateStart, tourDateStop: $tourDateStop, numberOfNights: $numberOfNights, room: $room, nutrition: $nutrition, tourPrice: $tourPrice, fuelCharge: $fuelCharge, serviceCharge: $serviceCharge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotelName, hotelName) ||
                other.hotelName == hotelName) &&
            (identical(other.hotelAdress, hotelAdress) ||
                other.hotelAdress == hotelAdress) &&
            (identical(other.horating, horating) ||
                other.horating == horating) &&
            (identical(other.ratingName, ratingName) ||
                other.ratingName == ratingName) &&
            (identical(other.departure, departure) ||
                other.departure == departure) &&
            (identical(other.arrivalCountry, arrivalCountry) ||
                other.arrivalCountry == arrivalCountry) &&
            (identical(other.tourDateStart, tourDateStart) ||
                other.tourDateStart == tourDateStart) &&
            (identical(other.tourDateStop, tourDateStop) ||
                other.tourDateStop == tourDateStop) &&
            (identical(other.numberOfNights, numberOfNights) ||
                other.numberOfNights == numberOfNights) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition) &&
            (identical(other.tourPrice, tourPrice) ||
                other.tourPrice == tourPrice) &&
            (identical(other.fuelCharge, fuelCharge) ||
                other.fuelCharge == fuelCharge) &&
            (identical(other.serviceCharge, serviceCharge) ||
                other.serviceCharge == serviceCharge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      hotelName,
      hotelAdress,
      horating,
      ratingName,
      departure,
      arrivalCountry,
      tourDateStart,
      tourDateStop,
      numberOfNights,
      room,
      nutrition,
      tourPrice,
      fuelCharge,
      serviceCharge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationModelImplCopyWith<_$ReservationModelImpl> get copyWith =>
      __$$ReservationModelImplCopyWithImpl<_$ReservationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReservationModelImplToJson(
      this,
    );
  }
}

abstract class _ReservationModel implements ReservationModel {
  const factory _ReservationModel(
      {required final int id,
      @JsonKey(name: 'hotel_name') required final String hotelName,
      @JsonKey(name: 'hotel_adress') required final String hotelAdress,
      required final int horating,
      @JsonKey(name: 'rating_name') required final String ratingName,
      required final String departure,
      @JsonKey(name: 'arrival_country') required final String arrivalCountry,
      @JsonKey(name: 'tour_date_start') required final String tourDateStart,
      @JsonKey(name: 'tour_date_stop') required final String tourDateStop,
      @JsonKey(name: 'number_of_nights') required final int numberOfNights,
      required final String room,
      required final String nutrition,
      @JsonKey(name: 'tour_price') required final int tourPrice,
      @JsonKey(name: 'fuel_charge') required final int fuelCharge,
      @JsonKey(name: 'service_charge')
      required final int serviceCharge}) = _$ReservationModelImpl;

  factory _ReservationModel.fromJson(Map<String, dynamic> json) =
      _$ReservationModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'hotel_name')
  String get hotelName;
  @override
  @JsonKey(name: 'hotel_adress')
  String get hotelAdress;
  @override
  int get horating;
  @override
  @JsonKey(name: 'rating_name')
  String get ratingName;
  @override
  String get departure;
  @override
  @JsonKey(name: 'arrival_country')
  String get arrivalCountry;
  @override
  @JsonKey(name: 'tour_date_start')
  String get tourDateStart;
  @override
  @JsonKey(name: 'tour_date_stop')
  String get tourDateStop;
  @override
  @JsonKey(name: 'number_of_nights')
  int get numberOfNights;
  @override
  String get room;
  @override
  String get nutrition;
  @override
  @JsonKey(name: 'tour_price')
  int get tourPrice;
  @override
  @JsonKey(name: 'fuel_charge')
  int get fuelCharge;
  @override
  @JsonKey(name: 'service_charge')
  int get serviceCharge;
  @override
  @JsonKey(ignore: true)
  _$$ReservationModelImplCopyWith<_$ReservationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
