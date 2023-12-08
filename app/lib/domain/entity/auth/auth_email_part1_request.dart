import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_email_part1_request.g.dart';
part 'auth_email_part1_request.freezed.dart';

@freezed
class AuthEmailPart1Request with _$AuthEmailPart1Request {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory AuthEmailPart1Request({
    required String email,
    required int digits,
  }) = _AuthEmailPart1Request;

  factory AuthEmailPart1Request.fromJson(Map<String, dynamic> json) =>
      _$AuthEmailPart1RequestFromJson(json);
}
