import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_register_request.freezed.dart';
part 'auth_register_request.g.dart';

@freezed
class AuthRegisterRequest with _$AuthRegisterRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory AuthRegisterRequest({
    required String name,
  }) = _AuthRegisterRequest;

  factory AuthRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthRegisterRequestFromJson(json);
}
