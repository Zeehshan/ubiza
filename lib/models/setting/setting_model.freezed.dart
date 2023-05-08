// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingModel _$SettingModelFromJson(Map<String, dynamic> json) {
  return _SettingModel.fromJson(json);
}

/// @nodoc
mixin _$SettingModel {
  bool get allowPushNotifications => throw _privateConstructorUsedError;
  bool get alwaysMuteVideos => throw _privateConstructorUsedError;
  bool get autoPlayVideos => throw _privateConstructorUsedError;
  bool get enableBiometricAuth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingModelCopyWith<SettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingModelCopyWith<$Res> {
  factory $SettingModelCopyWith(
          SettingModel value, $Res Function(SettingModel) then) =
      _$SettingModelCopyWithImpl<$Res, SettingModel>;
  @useResult
  $Res call(
      {bool allowPushNotifications,
      bool alwaysMuteVideos,
      bool autoPlayVideos,
      bool enableBiometricAuth});
}

/// @nodoc
class _$SettingModelCopyWithImpl<$Res, $Val extends SettingModel>
    implements $SettingModelCopyWith<$Res> {
  _$SettingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowPushNotifications = null,
    Object? alwaysMuteVideos = null,
    Object? autoPlayVideos = null,
    Object? enableBiometricAuth = null,
  }) {
    return _then(_value.copyWith(
      allowPushNotifications: null == allowPushNotifications
          ? _value.allowPushNotifications
          : allowPushNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      alwaysMuteVideos: null == alwaysMuteVideos
          ? _value.alwaysMuteVideos
          : alwaysMuteVideos // ignore: cast_nullable_to_non_nullable
              as bool,
      autoPlayVideos: null == autoPlayVideos
          ? _value.autoPlayVideos
          : autoPlayVideos // ignore: cast_nullable_to_non_nullable
              as bool,
      enableBiometricAuth: null == enableBiometricAuth
          ? _value.enableBiometricAuth
          : enableBiometricAuth // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingModelCopyWith<$Res>
    implements $SettingModelCopyWith<$Res> {
  factory _$$_SettingModelCopyWith(
          _$_SettingModel value, $Res Function(_$_SettingModel) then) =
      __$$_SettingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool allowPushNotifications,
      bool alwaysMuteVideos,
      bool autoPlayVideos,
      bool enableBiometricAuth});
}

/// @nodoc
class __$$_SettingModelCopyWithImpl<$Res>
    extends _$SettingModelCopyWithImpl<$Res, _$_SettingModel>
    implements _$$_SettingModelCopyWith<$Res> {
  __$$_SettingModelCopyWithImpl(
      _$_SettingModel _value, $Res Function(_$_SettingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowPushNotifications = null,
    Object? alwaysMuteVideos = null,
    Object? autoPlayVideos = null,
    Object? enableBiometricAuth = null,
  }) {
    return _then(_$_SettingModel(
      allowPushNotifications: null == allowPushNotifications
          ? _value.allowPushNotifications
          : allowPushNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      alwaysMuteVideos: null == alwaysMuteVideos
          ? _value.alwaysMuteVideos
          : alwaysMuteVideos // ignore: cast_nullable_to_non_nullable
              as bool,
      autoPlayVideos: null == autoPlayVideos
          ? _value.autoPlayVideos
          : autoPlayVideos // ignore: cast_nullable_to_non_nullable
              as bool,
      enableBiometricAuth: null == enableBiometricAuth
          ? _value.enableBiometricAuth
          : enableBiometricAuth // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_SettingModel implements _SettingModel {
  _$_SettingModel(
      {required this.allowPushNotifications,
      required this.alwaysMuteVideos,
      required this.autoPlayVideos,
      required this.enableBiometricAuth});

  factory _$_SettingModel.fromJson(Map<String, dynamic> json) =>
      _$$_SettingModelFromJson(json);

  @override
  final bool allowPushNotifications;
  @override
  final bool alwaysMuteVideos;
  @override
  final bool autoPlayVideos;
  @override
  final bool enableBiometricAuth;

  @override
  String toString() {
    return 'SettingModel(allowPushNotifications: $allowPushNotifications, alwaysMuteVideos: $alwaysMuteVideos, autoPlayVideos: $autoPlayVideos, enableBiometricAuth: $enableBiometricAuth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingModel &&
            (identical(other.allowPushNotifications, allowPushNotifications) ||
                other.allowPushNotifications == allowPushNotifications) &&
            (identical(other.alwaysMuteVideos, alwaysMuteVideos) ||
                other.alwaysMuteVideos == alwaysMuteVideos) &&
            (identical(other.autoPlayVideos, autoPlayVideos) ||
                other.autoPlayVideos == autoPlayVideos) &&
            (identical(other.enableBiometricAuth, enableBiometricAuth) ||
                other.enableBiometricAuth == enableBiometricAuth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, allowPushNotifications,
      alwaysMuteVideos, autoPlayVideos, enableBiometricAuth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingModelCopyWith<_$_SettingModel> get copyWith =>
      __$$_SettingModelCopyWithImpl<_$_SettingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingModelToJson(
      this,
    );
  }
}

abstract class _SettingModel implements SettingModel {
  factory _SettingModel(
      {required final bool allowPushNotifications,
      required final bool alwaysMuteVideos,
      required final bool autoPlayVideos,
      required final bool enableBiometricAuth}) = _$_SettingModel;

  factory _SettingModel.fromJson(Map<String, dynamic> json) =
      _$_SettingModel.fromJson;

  @override
  bool get allowPushNotifications;
  @override
  bool get alwaysMuteVideos;
  @override
  bool get autoPlayVideos;
  @override
  bool get enableBiometricAuth;
  @override
  @JsonKey(ignore: true)
  _$$_SettingModelCopyWith<_$_SettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
