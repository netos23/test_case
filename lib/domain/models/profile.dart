import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory Profile({
    required String email,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'second_name') String? secondName,
    @JsonKey(name: 'birth_date') String? birthDate,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'brand') String? brand,
    @JsonKey(name: 'tg_chat_start_link') String? tgChatStartLink,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

@freezed
class PaymentId with _$PaymentId {
  factory PaymentId({
    required int id,
  }) = _PaymentId;

  factory PaymentId.fromJson(Map<String, dynamic> json) =>
      _$PaymentIdFromJson(json);
}

@freezed
class PaymetnUrl with _$PaymetnUrl {
  factory PaymetnUrl({
    required String url,
    String? success_url,
    String? failed_url,
  }) = _PaymetnUrl;

  factory PaymetnUrl.fromJson(Map<String, dynamic> json) =>
      _$PaymetnUrlFromJson(json);
}
