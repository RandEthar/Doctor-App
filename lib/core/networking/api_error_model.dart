import 'package:doctor_app/core/helpers/extension.dart';
import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;
  @JsonKey(name:"data")
  final Map<String,dynamic> ?errors;
  ApiErrorModel({
    this.errors, 
    this.message,
    this.code,
  });
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

String getAllErrorMessage() {
  if (errors.isNullOrEmpty()) {
    return message ?? "Unknown Error occurred";
  }

  final String errorMessage = errors!.entries.map((entry) {
    final value = entry.value;
    if (value is List<String>) {
      return value.join(",");
    }
    return value.toString();
  }).join('\n');

  return errorMessage;
}

}