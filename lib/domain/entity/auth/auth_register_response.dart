import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_register_response.freezed.dart';
part 'auth_register_response.g.dart';

@freezed
class AuthRegisterResponse with _$AuthRegisterResponse {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory AuthRegisterResponse({
    required String name,
  }) = _AuthRegisterResponse;

  factory AuthRegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthRegisterResponseFromJson(json);
}
