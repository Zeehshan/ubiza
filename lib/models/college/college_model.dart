import 'package:freezed_annotation/freezed_annotation.dart';

part 'college_model.freezed.dart';
part 'college_model.g.dart';

@freezed
class CollegeModel with _$CollegeModel {
  @JsonSerializable()
  factory CollegeModel(
      {required String name,
      required String logo,
      required String code,
      required bool active}) = _CollegeModel;

  factory CollegeModel.fromJson(json) => _$CollegeModelFromJson(json);
}
