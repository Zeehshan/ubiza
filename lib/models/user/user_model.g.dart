// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      email: json['email'] as String,
      fName: json['f_name'] as String? ?? '',
      lName: json['l_name'] as String? ?? '',
      dob: json['dob'] as String? ?? '',
      college: json['college'] as String? ?? '',
      country: json['country'] as String? ?? '',
      collegeLogo: json['college_logo'] as String? ?? '',
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']) ??
          Gender.unknown,
      documentId: json['document_id'] == null
          ? null
          : DocumentModel.fromJson(json['document_id']),
      collegeId: json['college_id'] == null
          ? null
          : DocumentModel.fromJson(json['college_id']),
      selfie: json['selfie'] == null
          ? null
          : DocumentModel.fromJson(json['selfie']),
      termsAndConditionsAccepted:
          json['terms_and_conditions_accepted'] as bool? ?? false,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'f_name': instance.fName,
      'l_name': instance.lName,
      'dob': instance.dob,
      'college': instance.college,
      'country': instance.country,
      'college_logo': instance.collegeLogo,
      'gender': _$GenderEnumMap[instance.gender]!,
      'document_id': instance.documentId,
      'college_id': instance.collegeId,
      'selfie': instance.selfie,
      'terms_and_conditions_accepted': instance.termsAndConditionsAccepted,
    };

const _$GenderEnumMap = {
  Gender.male: 0,
  Gender.female: 1,
  Gender.unknown: 'unknown',
};
