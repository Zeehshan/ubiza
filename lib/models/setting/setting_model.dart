import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_model.g.dart';
part 'setting_model.freezed.dart';

@freezed
class SettingModel with _$SettingModel {
  @JsonSerializable()
  factory SettingModel(
      {required bool allowPushNotifications,
      required bool alwaysMuteVideos,
      required bool autoPlayVideos,
      required bool enableBiometricAuth}) = _SettingModel;

  factory SettingModel.fromJson(json) => _$SettingModelFromJson(json);
}
