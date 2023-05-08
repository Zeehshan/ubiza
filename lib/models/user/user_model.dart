import 'package:freezed_annotation/freezed_annotation.dart';

import '../models.dart';

part 'user_model.g.dart';
part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable()
  factory UserModel(
      {required String id,
      required bool? active,
      required String? appIdentifier,
      required String? city,
      required String? country,
      required String? email,
      required String? firstName,
      required String? lastName,
      required List<InterestModel> interests,
      required String? phoneNumber,
      required String? profilePictureURL,
      required SettingModel? settings,
      required String? state}) = _UserModel;
}
