import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/utils.dart';
import '../models.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory UserModel({
    required String email,
    @Default('') String fName,
    @Default('') String lName,
    @Default('') String dob,
    @Default('') String college,
    @Default('') String country,
    @Default('') String collegeLogo,
    @Default(Gender.unknown) Gender gender,
    DocumentModel? documentId,
    DocumentModel? collegeId,
    DocumentModel? selfie,
    @Default(false) bool termsAndConditionsAccepted,
  }) = _UserModel;
  factory UserModel.fromJson(json) => _$UserModelFromJson(json);
}
