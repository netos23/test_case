import 'package:freezed_annotation/freezed_annotation.dart';

part 'source.freezed.dart';

part 'source.g.dart';

@freezed
class Source with _$Source {
  factory Source({
    required int id,
    required String title,
    required String url,
    required String topic,
    bool? profi,
    @JsonKey(name: 'for_age') String? forAge,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}
