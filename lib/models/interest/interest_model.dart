import 'package:freezed_annotation/freezed_annotation.dart';

part 'interest_model.g.dart';
part 'interest_model.freezed.dart';

@freezed
class InterestModel with _$InterestModel {
  @JsonSerializable()
  factory InterestModel(
      {required int id,
      required bool isEnable,
      required String item}) = _InterestModel;

  factory InterestModel.fromJson(json) => _$InterestModelFromJson(json);
}
