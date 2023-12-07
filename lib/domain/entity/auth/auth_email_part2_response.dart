import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_email_part2_response.g.dart';

part 'auth_email_part2_response.freezed.dart';

@freezed
class AuthEmailPart2Response with _$AuthEmailPart2Response {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory AuthEmailPart2Response({
    @JsonKey(name: "refresh_token") required String refreshToken,
    @JsonKey(name: "access_token") required String accessToken,
  }) = _AuthEmailPart2Response;

  factory AuthEmailPart2Response.fromJson(Map<String, dynamic> json) =>
      _$AuthEmailPart2ResponseFromJson(json);
}
