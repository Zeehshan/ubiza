// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'college_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CollegeModel _$CollegeModelFromJson(Map<String, dynamic> json) {
  return _CollegeModel.fromJson(json);
}

/// @nodoc
mixin _$CollegeModel {
  String get name => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollegeModelCopyWith<CollegeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollegeModelCopyWith<$Res> {
  factory $CollegeModelCopyWith(
          CollegeModel value, $Res Function(CollegeModel) then) =
      _$CollegeModelCopyWithImpl<$Res, CollegeModel>;
  @useResult
  $Res call({String name, String logo, String code, bool active});
}

/// @nodoc
class _$CollegeModelCopyWithImpl<$Res, $Val extends CollegeModel>
    implements $CollegeModelCopyWith<$Res> {
  _$CollegeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? logo = null,
    Object? code = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CollegeModelCopyWith<$Res>
    implements $CollegeModelCopyWith<$Res> {
  factory _$$_CollegeModelCopyWith(
          _$_CollegeModel value, $Res Function(_$_CollegeModel) then) =
      __$$_CollegeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String logo, String code, bool active});
}

/// @nodoc
class __$$_CollegeModelCopyWithImpl<$Res>
    extends _$CollegeModelCopyWithImpl<$Res, _$_CollegeModel>
    implements _$$_CollegeModelCopyWith<$Res> {
  __$$_CollegeModelCopyWithImpl(
      _$_CollegeModel _value, $Res Function(_$_CollegeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? logo = null,
    Object? code = null,
    Object? active = null,
  }) {
    return _then(_$_CollegeModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_CollegeModel implements _CollegeModel {
  _$_CollegeModel(
      {required this.name,
      required this.logo,
      required this.code,
      required this.active});

  factory _$_CollegeModel.fromJson(Map<String, dynamic> json) =>
      _$$_CollegeModelFromJson(json);

  @override
  final String name;
  @override
  final String logo;
  @override
  final String code;
  @override
  final bool active;

  @override
  String toString() {
    return 'CollegeModel(name: $name, logo: $logo, code: $code, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CollegeModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, logo, code, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CollegeModelCopyWith<_$_CollegeModel> get copyWith =>
      __$$_CollegeModelCopyWithImpl<_$_CollegeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollegeModelToJson(
      this,
    );
  }
}

abstract class _CollegeModel implements CollegeModel {
  factory _CollegeModel(
      {required final String name,
      required final String logo,
      required final String code,
      required final bool active}) = _$_CollegeModel;

  factory _CollegeModel.fromJson(Map<String, dynamic> json) =
      _$_CollegeModel.fromJson;

  @override
  String get name;
  @override
  String get logo;
  @override
  String get code;
  @override
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$_CollegeModelCopyWith<_$_CollegeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
