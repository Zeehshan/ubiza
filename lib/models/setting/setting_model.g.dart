// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingModel _$$_SettingModelFromJson(Map<String, dynamic> json) =>
    _$_SettingModel(
      allowPushNotifications: json['allowPushNotifications'] as bool,
      alwaysMuteVideos: json['alwaysMuteVideos'] as bool,
      autoPlayVideos: json['autoPlayVideos'] as bool,
      enableBiometricAuth: json['enableBiometricAuth'] as bool,
    );

Map<String, dynamic> _$$_SettingModelToJson(_$_SettingModel instance) =>
    <String, dynamic>{
      'allowPushNotifications': instance.allowPushNotifications,
      'alwaysMuteVideos': instance.alwaysMuteVideos,
      'autoPlayVideos': instance.autoPlayVideos,
      'enableBiometricAuth': instance.enableBiometricAuth,
    };
