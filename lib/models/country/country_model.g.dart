// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryModel _$$_CountryModelFromJson(Map<String, dynamic> json) =>
    _$_CountryModel(
      name: json['name'] as String,
      logo: json['logo'] as String,
      code: json['code'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$$_CountryModelToJson(_$_CountryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'logo': instance.logo,
      'code': instance.code,
      'active': instance.active,
    };
