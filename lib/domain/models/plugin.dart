import 'package:freezed_annotation/freezed_annotation.dart';

part 'plugin.freezed.dart';
part 'plugin.g.dart';

@freezed
class Plugin with _$Plugin {
  factory Plugin({
    required int id,
    required String name,
    required String link,
    String? picture,
    String? description,
    @JsonKey(name: 'per_photo') double? perPhoto,
    bool? isSelected,
  }) = _Plugin;

  factory Plugin.fromJson(Map<String, dynamic> json) => _$PluginFromJson(json);
}
