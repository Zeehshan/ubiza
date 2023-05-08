// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String,
      active: json['active'] as bool?,
      appIdentifier: json['appIdentifier'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      interests: (json['interests'] as List<dynamic>)
          .map(InterestModel.fromJson)
          .toList(),
      phoneNumber: json['phoneNumber'] as String?,
      profilePictureURL: json['profilePictureURL'] as String?,
      settings: json['settings'] == null
          ? null
          : SettingModel.fromJson(json['settings']),
      state: json['state'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'appIdentifier': instance.appIdentifier,
      'city': instance.city,
      'country': instance.country,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'interests': instance.interests,
      'phoneNumber': instance.phoneNumber,
      'profilePictureURL': instance.profilePictureURL,
      'settings': instance.settings,
      'state': instance.state,
    };
