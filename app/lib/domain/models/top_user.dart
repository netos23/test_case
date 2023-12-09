import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_user.freezed.dart';
part 'top_user.g.dart';

@freezed
class TopUser with _$TopUser {
    factory TopUser({
      required String name,
      required String level,
      @JsonKey(name: 'total_score')
      required int totalScore,
}) = _TopUser;

    factory TopUser.fromJson(Map<String, dynamic> json) => _$TopUserFromJson(json);
}