import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_user.freezed.dart';

part 'chat_user.g.dart';

@freezed
sealed class ChatUser with _$ChatUser {
  const factory ChatUser({
    required String name,
    required String surname,
    required String avatar,
    DateTime? lastSeen,
  }) = _ChatUser;

  factory ChatUser.fromJson(Map<String, dynamic> json) =>
      _$ChatUserFromJson(json);
}
