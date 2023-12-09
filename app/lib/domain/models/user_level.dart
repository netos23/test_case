import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_level.freezed.dart';
part 'user_level.g.dart';

@freezed
class UserLevel with _$UserLevel {
    factory UserLevel({
        required int id,
        required String level,
        @JsonKey(name: 'score_from')
        required int scoreFrom,
        required String picture,
        required String color,
}) = _UserLevel;
    
    factory UserLevel.fromJson(Map<String, dynamic> json) => _$UserLevelFromJson(json);
}