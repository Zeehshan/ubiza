import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum Gender {
  @JsonValue(0)
  male,
  @JsonValue(1)
  female,
  @JsonValue(2)
  other,
  @JsonKey.nullForUndefinedEnumValue
  unknown
}

enum DocumentOptionType { camera, gallery }
