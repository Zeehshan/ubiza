import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
class CountryModel with _$CountryModel {
  @JsonSerializable()
  factory CountryModel(
      {required String name,
      required String logo,
      required String code,
      required bool active}) = _CountryModel;

  factory CountryModel.fromJson(json) => _$CountryModelFromJson(json);
}
