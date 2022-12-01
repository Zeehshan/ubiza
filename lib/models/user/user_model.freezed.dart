// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get email => throw _privateConstructorUsedError;
  String get fName => throw _privateConstructorUsedError;
  String get lName => throw _privateConstructorUsedError;
  String get dob => throw _privateConstructorUsedError;
  String get college => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get collegeLogo => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  DocumentModel? get documentId => throw _privateConstructorUsedError;
  DocumentModel? get collegeId => throw _privateConstructorUsedError;
  DocumentModel? get selfie => throw _privateConstructorUsedError;
  bool get termsAndConditionsAccepted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      {String email,
      String fName,
      String lName,
      String dob,
      String college,
      String country,
      String collegeLogo,
      Gender gender,
      DocumentModel? documentId,
      DocumentModel? collegeId,
      DocumentModel? selfie,
      bool termsAndConditionsAccepted});

  $DocumentModelCopyWith<$Res>? get documentId;
  $DocumentModelCopyWith<$Res>? get collegeId;
  $DocumentModelCopyWith<$Res>? get selfie;
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
    Object? email = null,
    Object? fName = null,
    Object? lName = null,
    Object? dob = null,
    Object? college = null,
    Object? country = null,
    Object? collegeLogo = null,
    Object? gender = null,
    Object? documentId = freezed,
    Object? collegeId = freezed,
    Object? selfie = freezed,
    Object? termsAndConditionsAccepted = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fName: null == fName
          ? _value.fName
          : fName // ignore: cast_nullable_to_non_nullable
              as String,
      lName: null == lName
          ? _value.lName
          : lName // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      college: null == college
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      collegeLogo: null == collegeLogo
          ? _value.collegeLogo
          : collegeLogo // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as DocumentModel?,
      collegeId: freezed == collegeId
          ? _value.collegeId
          : collegeId // ignore: cast_nullable_to_non_nullable
              as DocumentModel?,
      selfie: freezed == selfie
          ? _value.selfie
          : selfie // ignore: cast_nullable_to_non_nullable
              as DocumentModel?,
      termsAndConditionsAccepted: null == termsAndConditionsAccepted
          ? _value.termsAndConditionsAccepted
          : termsAndConditionsAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentModelCopyWith<$Res>? get documentId {
    if (_value.documentId == null) {
      return null;
    }

    return $DocumentModelCopyWith<$Res>(_value.documentId!, (value) {
      return _then(_value.copyWith(documentId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentModelCopyWith<$Res>? get collegeId {
    if (_value.collegeId == null) {
      return null;
    }

    return $DocumentModelCopyWith<$Res>(_value.collegeId!, (value) {
      return _then(_value.copyWith(collegeId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentModelCopyWith<$Res>? get selfie {
    if (_value.selfie == null) {
      return null;
    }

    return $DocumentModelCopyWith<$Res>(_value.selfie!, (value) {
      return _then(_value.copyWith(selfie: value) as $Val);
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
      {String email,
      String fName,
      String lName,
      String dob,
      String college,
      String country,
      String collegeLogo,
      Gender gender,
      DocumentModel? documentId,
      DocumentModel? collegeId,
      DocumentModel? selfie,
      bool termsAndConditionsAccepted});

  @override
  $DocumentModelCopyWith<$Res>? get documentId;
  @override
  $DocumentModelCopyWith<$Res>? get collegeId;
  @override
  $DocumentModelCopyWith<$Res>? get selfie;
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
    Object? email = null,
    Object? fName = null,
    Object? lName = null,
    Object? dob = null,
    Object? college = null,
    Object? country = null,
    Object? collegeLogo = null,
    Object? gender = null,
    Object? documentId = freezed,
    Object? collegeId = freezed,
    Object? selfie = freezed,
    Object? termsAndConditionsAccepted = null,
  }) {
    return _then(_$_UserModel(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fName: null == fName
          ? _value.fName
          : fName // ignore: cast_nullable_to_non_nullable
              as String,
      lName: null == lName
          ? _value.lName
          : lName // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      college: null == college
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      collegeLogo: null == collegeLogo
          ? _value.collegeLogo
          : collegeLogo // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as DocumentModel?,
      collegeId: freezed == collegeId
          ? _value.collegeId
          : collegeId // ignore: cast_nullable_to_non_nullable
              as DocumentModel?,
      selfie: freezed == selfie
          ? _value.selfie
          : selfie // ignore: cast_nullable_to_non_nullable
              as DocumentModel?,
      termsAndConditionsAccepted: null == termsAndConditionsAccepted
          ? _value.termsAndConditionsAccepted
          : termsAndConditionsAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_UserModel implements _UserModel {
  _$_UserModel(
      {required this.email,
      this.fName = '',
      this.lName = '',
      this.dob = '',
      this.college = '',
      this.country = '',
      this.collegeLogo = '',
      this.gender = Gender.unknown,
      this.documentId,
      this.collegeId,
      this.selfie,
      this.termsAndConditionsAccepted = false});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final String email;
  @override
  @JsonKey()
  final String fName;
  @override
  @JsonKey()
  final String lName;
  @override
  @JsonKey()
  final String dob;
  @override
  @JsonKey()
  final String college;
  @override
  @JsonKey()
  final String country;
  @override
  @JsonKey()
  final String collegeLogo;
  @override
  @JsonKey()
  final Gender gender;
  @override
  final DocumentModel? documentId;
  @override
  final DocumentModel? collegeId;
  @override
  final DocumentModel? selfie;
  @override
  @JsonKey()
  final bool termsAndConditionsAccepted;

  @override
  String toString() {
    return 'UserModel(email: $email, fName: $fName, lName: $lName, dob: $dob, college: $college, country: $country, collegeLogo: $collegeLogo, gender: $gender, documentId: $documentId, collegeId: $collegeId, selfie: $selfie, termsAndConditionsAccepted: $termsAndConditionsAccepted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fName, fName) || other.fName == fName) &&
            (identical(other.lName, lName) || other.lName == lName) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.college, college) || other.college == college) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.collegeLogo, collegeLogo) ||
                other.collegeLogo == collegeLogo) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.collegeId, collegeId) ||
                other.collegeId == collegeId) &&
            (identical(other.selfie, selfie) || other.selfie == selfie) &&
            (identical(other.termsAndConditionsAccepted,
                    termsAndConditionsAccepted) ||
                other.termsAndConditionsAccepted ==
                    termsAndConditionsAccepted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      fName,
      lName,
      dob,
      college,
      country,
      collegeLogo,
      gender,
      documentId,
      collegeId,
      selfie,
      termsAndConditionsAccepted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {required final String email,
      final String fName,
      final String lName,
      final String dob,
      final String college,
      final String country,
      final String collegeLogo,
      final Gender gender,
      final DocumentModel? documentId,
      final DocumentModel? collegeId,
      final DocumentModel? selfie,
      final bool termsAndConditionsAccepted}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  String get email;
  @override
  String get fName;
  @override
  String get lName;
  @override
  String get dob;
  @override
  String get college;
  @override
  String get country;
  @override
  String get collegeLogo;
  @override
  Gender get gender;
  @override
  DocumentModel? get documentId;
  @override
  DocumentModel? get collegeId;
  @override
  DocumentModel? get selfie;
  @override
  bool get termsAndConditionsAccepted;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
