import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_model.freezed.dart';
part 'document_model.g.dart';

@freezed
class DocumentModel with _$DocumentModel {
  @JsonSerializable()
  factory DocumentModel({
    required String document,
  }) = _DocumentModel;

  factory DocumentModel.fromJson(json) => _$DocumentModelFromJson(json);
}
