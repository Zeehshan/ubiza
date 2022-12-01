import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum Gender {
  @JsonValue(0)
  male,
  @JsonValue(1)
  female,
  @JsonKey.nullForUndefinedEnumValue
  unknown
}

enum DocumentOptionType { camera, gallery }
