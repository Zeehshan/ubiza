// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interest_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InterestModel _$InterestModelFromJson(Map<String, dynamic> json) {
  return _InterestModel.fromJson(json);
}

/// @nodoc
mixin _$InterestModel {
  int get id => throw _privateConstructorUsedError;
  bool get isEnable => throw _privateConstructorUsedError;
  String get item => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InterestModelCopyWith<InterestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestModelCopyWith<$Res> {
  factory $InterestModelCopyWith(
          InterestModel value, $Res Function(InterestModel) then) =
      _$InterestModelCopyWithImpl<$Res, InterestModel>;
  @useResult
  $Res call({int id, bool isEnable, String item});
}

/// @nodoc
class _$InterestModelCopyWithImpl<$Res, $Val extends InterestModel>
    implements $InterestModelCopyWith<$Res> {
  _$InterestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isEnable = null,
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isEnable: null == isEnable
          ? _value.isEnable
          : isEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InterestModelCopyWith<$Res>
    implements $InterestModelCopyWith<$Res> {
  factory _$$_InterestModelCopyWith(
          _$_InterestModel value, $Res Function(_$_InterestModel) then) =
      __$$_InterestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, bool isEnable, String item});
}

/// @nodoc
class __$$_InterestModelCopyWithImpl<$Res>
    extends _$InterestModelCopyWithImpl<$Res, _$_InterestModel>
    implements _$$_InterestModelCopyWith<$Res> {
  __$$_InterestModelCopyWithImpl(
      _$_InterestModel _value, $Res Function(_$_InterestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isEnable = null,
    Object? item = null,
  }) {
    return _then(_$_InterestModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isEnable: null == isEnable
          ? _value.isEnable
          : isEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_InterestModel implements _InterestModel {
  _$_InterestModel(
      {required this.id, required this.isEnable, required this.item});

  factory _$_InterestModel.fromJson(Map<String, dynamic> json) =>
      _$$_InterestModelFromJson(json);

  @override
  final int id;
  @override
  final bool isEnable;
  @override
  final String item;

  @override
  String toString() {
    return 'InterestModel(id: $id, isEnable: $isEnable, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InterestModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isEnable, isEnable) ||
                other.isEnable == isEnable) &&
            (identical(other.item, item) || other.item == item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, isEnable, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InterestModelCopyWith<_$_InterestModel> get copyWith =>
      __$$_InterestModelCopyWithImpl<_$_InterestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InterestModelToJson(
      this,
    );
  }
}

abstract class _InterestModel implements InterestModel {
  factory _InterestModel(
      {required final int id,
      required final bool isEnable,
      required final String item}) = _$_InterestModel;

  factory _InterestModel.fromJson(Map<String, dynamic> json) =
      _$_InterestModel.fromJson;

  @override
  int get id;
  @override
  bool get isEnable;
  @override
  String get item;
  @override
  @JsonKey(ignore: true)
  _$$_InterestModelCopyWith<_$_InterestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
