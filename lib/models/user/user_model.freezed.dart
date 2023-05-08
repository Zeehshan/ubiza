// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  String? get appIdentifier => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  List<InterestModel> get interests => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get profilePictureURL => throw _privateConstructorUsedError;
  SettingModel? get settings => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String id,
      bool? active,
      String? appIdentifier,
      String? city,
      String? country,
      String? email,
      String? firstName,
      String? lastName,
      List<InterestModel> interests,
      String? phoneNumber,
      String? profilePictureURL,
      SettingModel? settings,
      String? state});

  $SettingModelCopyWith<$Res>? get settings;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? active = freezed,
    Object? appIdentifier = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? interests = null,
    Object? phoneNumber = freezed,
    Object? profilePictureURL = freezed,
    Object? settings = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      appIdentifier: freezed == appIdentifier
          ? _value.appIdentifier
          : appIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: null == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<InterestModel>,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureURL: freezed == profilePictureURL
          ? _value.profilePictureURL
          : profilePictureURL // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as SettingModel?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingModelCopyWith<$Res>? get settings {
    if (_value.settings == null) {
      return null;
    }

    return $SettingModelCopyWith<$Res>(_value.settings!, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      bool? active,
      String? appIdentifier,
      String? city,
      String? country,
      String? email,
      String? firstName,
      String? lastName,
      List<InterestModel> interests,
      String? phoneNumber,
      String? profilePictureURL,
      SettingModel? settings,
      String? state});

  @override
  $SettingModelCopyWith<$Res>? get settings;
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? active = freezed,
    Object? appIdentifier = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? interests = null,
    Object? phoneNumber = freezed,
    Object? profilePictureURL = freezed,
    Object? settings = freezed,
    Object? state = freezed,
  }) {
    return _then(_$_UserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      appIdentifier: freezed == appIdentifier
          ? _value.appIdentifier
          : appIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: null == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<InterestModel>,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureURL: freezed == profilePictureURL
          ? _value.profilePictureURL
          : profilePictureURL // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as SettingModel?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_UserModel implements _UserModel {
  _$_UserModel(
      {required this.id,
      required this.active,
      required this.appIdentifier,
      required this.city,
      required this.country,
      required this.email,
      required this.firstName,
      required this.lastName,
      required final List<InterestModel> interests,
      required this.phoneNumber,
      required this.profilePictureURL,
      required this.settings,
      required this.state})
      : _interests = interests;

  @override
  final String id;
  @override
  final bool? active;
  @override
  final String? appIdentifier;
  @override
  final String? city;
  @override
  final String? country;
  @override
  final String? email;
  @override
  final String? firstName;
  @override
  final String? lastName;
  final List<InterestModel> _interests;
  @override
  List<InterestModel> get interests {
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interests);
  }

  @override
  final String? phoneNumber;
  @override
  final String? profilePictureURL;
  @override
  final SettingModel? settings;
  @override
  final String? state;

  @override
  String toString() {
    return 'UserModel(id: $id, active: $active, appIdentifier: $appIdentifier, city: $city, country: $country, email: $email, firstName: $firstName, lastName: $lastName, interests: $interests, phoneNumber: $phoneNumber, profilePictureURL: $profilePictureURL, settings: $settings, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.appIdentifier, appIdentifier) ||
                other.appIdentifier == appIdentifier) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.profilePictureURL, profilePictureURL) ||
                other.profilePictureURL == profilePictureURL) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      active,
      appIdentifier,
      city,
      country,
      email,
      firstName,
      lastName,
      const DeepCollectionEquality().hash(_interests),
      phoneNumber,
      profilePictureURL,
      settings,
      state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {required final String id,
      required final bool? active,
      required final String? appIdentifier,
      required final String? city,
      required final String? country,
      required final String? email,
      required final String? firstName,
      required final String? lastName,
      required final List<InterestModel> interests,
      required final String? phoneNumber,
      required final String? profilePictureURL,
      required final SettingModel? settings,
      required final String? state}) = _$_UserModel;

  @override
  String get id;
  @override
  bool? get active;
  @override
  String? get appIdentifier;
  @override
  String? get city;
  @override
  String? get country;
  @override
  String? get email;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  List<InterestModel> get interests;
  @override
  String? get phoneNumber;
  @override
  String? get profilePictureURL;
  @override
  SettingModel? get settings;
  @override
  String? get state;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
