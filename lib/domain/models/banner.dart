import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner.freezed.dart';

part 'banner.g.dart';

@Freezed(
  fromJson: true,
  toJson: true,
  unionKey: "type",
)
sealed class ShowCaseBanner with _$ShowCaseBanner {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory ShowCaseBanner.imageBanner({
    @JsonKey(name: 'image_url') required String imageUrl,
    String? link,
  }) = ImageBanner;

  const factory ShowCaseBanner.buttonBanner({
    required String text,
    String? link,
  }) = ButtonBanner;

  const factory ShowCaseBanner.titleBanner({
    required String text,
  }) = TitleBanner;

  const factory ShowCaseBanner.markdownBanner({
    required String text,
  }) = MarkdownBanner;

  const factory ShowCaseBanner.sliderBanner({
    required List<SliderItem> images,
  }) = SliderBanner;

  factory ShowCaseBanner.fromJson(Map<String, dynamic> json) =>
      _$ShowCaseBannerFromJson(json);
}

@freezed
class SliderItem with _$SliderItem {
  const factory SliderItem({
    required String url,
    String? link,
  }) = _SliderItem;

  factory SliderItem.fromJson(Map<String, dynamic> json) =>
      _$SliderItemFromJson(json);
}
