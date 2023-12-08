import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:test_case/domain/models/banner.dart';
import 'package:test_case/pages/components/loading_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'show_case_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ShowCasePage module
@RoutePage()
class ShowCasePageWidget extends ElementaryWidget<IShowCasePageWidgetModel> {
  const ShowCasePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultShowCasePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IShowCasePageWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.asset(
            'assets/images/logo.png',
            width: 60,
            height: 60,
          ),
        ),
        title: const Text(
          'HOTEL WRITER',
          style: TextStyle(
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 600,
          child: SafeArea(
            child: EntityStateNotifierBuilder(
              listenableEntityState: wm.bannersState,
              loadingBuilder: (context, data) {
                return const Center(
                  child: LoadingIndicator(),
                );
              },
              builder: (context, bannersData) {
                final banners = bannersData ?? [];
                if (banners.isEmpty) {
                  return const Center(
                    child: Text('Can`t get banners'),
                  );
                }

                return RefreshIndicator.adaptive(
                  onRefresh: wm.loadBanners,
                  child: ListView.builder(
                    itemCount: banners.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5.0,
                        ),
                        child: banners[index].when(
                          imageBanner: (imageUrl, link) => _ImageBannerWidget(
                            image: imageUrl,
                            link: link,
                            onTap: wm.openLink,
                          ),
                          buttonBanner: (text, link) => _ButtonBannerWidget(
                            text: text,
                            link: link,
                            onPressed: wm.openLink,
                          ),
                          titleBanner: (text) => _TitleBannerWidget(
                            text: text,
                          ),
                          markdownBanner: (text) => _MarkdownBannerWidget(
                            text: text,
                            onTap: wm.openLink,
                          ),
                          sliderBanner: (items) => _SliderBannerWidget(
                            items: items,
                            onTap: wm.openLink,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _ImageBannerWidget extends StatelessWidget {
  const _ImageBannerWidget({
    Key? key,
    required this.image,
    this.link,
    required this.onTap,
  }) : super(key: key);

  final String image;
  final String? link;

  final ValueChanged<String>? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 0,
      ),
      child: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(0),
        child: GestureDetector(
          onTap: link != null ? () => onTap?.call(link!) : null,
          child: AspectRatio(
            aspectRatio: 1.0,
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: image,
              progressIndicatorBuilder: (_, __, ___) {
                return const Center(
                  child: LoadingIndicator(),
                );
              },
              errorWidget: (_, __, ___) {
                return Image.asset(
                  'assets/images/satellite.png',
                  fit: BoxFit.fill,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _ButtonBannerWidget extends StatelessWidget {
  const _ButtonBannerWidget({
    Key? key,
    required this.text,
    this.link,
    this.onPressed,
  }) : super(key: key);

  final String text;
  final String? link;
  final ValueChanged<String>? onPressed;

  @override
  Widget build(BuildContext context) {
    final link = this.link;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: FilledButton(
        onPressed: link != null ? () => onPressed?.call(link) : null,
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}

class _TitleBannerWidget extends StatelessWidget {
  const _TitleBannerWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Text(
        text,
        style: theme.textTheme.headlineLarge?.copyWith(
          color: theme.colorScheme.onBackground,
        ),
      ),
    );
  }
}

class _MarkdownBannerWidget extends StatelessWidget {
  const _MarkdownBannerWidget({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final String text;
  final ValueChanged<String>? onTap;

  @override
  Widget build(BuildContext context) {
    return Markdown(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      styleSheet: fromTheme(
        Theme.of(context),
      ),
      onTapLink: (text, href, title) {
        if (href != null) {
          onTap?.call(href);
        }
      },
      styleSheetTheme: MarkdownStyleSheetBaseTheme.material,
      shrinkWrap: true,
      softLineBreak: true,
      selectable: true,
      physics: const NeverScrollableScrollPhysics(),
      data: text,
    );
  }
}

class _SliderBannerWidget extends StatefulWidget {
  const _SliderBannerWidget({
    Key? key,
    required this.items,
    required this.onTap,
  }) : super(key: key);

  final List<SliderItem> items;
  final ValueChanged<String>? onTap;

  @override
  State<_SliderBannerWidget> createState() => _SliderBannerWidgetState();
}

class _SliderBannerWidgetState extends State<_SliderBannerWidget> {
  final PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: PageView.builder(
            controller: controller,
            itemCount: widget.items.length,
            itemBuilder: (context, index) {
              final item = widget.items[index];
              final link = widget.items[index].link;
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: GestureDetector(
                  onTap: link != null ? () => widget.onTap?.call(link) : null,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl: item.url,
                      progressIndicatorBuilder: (_, __, ___) {
                        return const Center(
                          child: LoadingIndicator(),
                        );
                      },
                      errorWidget: (_, __, ___) {
                        return Image.asset(
                          'assets/images/satellite.png',
                          fit: BoxFit.fill,
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SmoothPageIndicator(
          controller: controller, // PageController
          count: widget.items.length,
          effect: const WormEffect(
            dotWidth: 8,
            dotHeight: 8,
          ),
          // your preferred effect
          onDotClicked: (index) {
            controller.animateToPage(
              index,
              duration: const Duration(milliseconds: 400),
              curve: Curves.bounceIn,
            );
          },
        )
      ],
    );
  }
}

MarkdownStyleSheet fromTheme(ThemeData theme) {
  assert(theme.textTheme.bodyMedium?.fontSize != null);
  final colorScheme = theme.colorScheme;
  return MarkdownStyleSheet(
    a: const TextStyle(color: Colors.blue),
    p: theme.textTheme.bodyMedium?.copyWith(
      color: colorScheme.onBackground,
    ),
    pPadding: EdgeInsets.zero,
    code: theme.textTheme.bodyMedium!.copyWith(
      backgroundColor: theme.cardTheme.color ?? theme.cardColor,
      fontFamily: 'monospace',
      fontSize: theme.textTheme.bodyMedium!.fontSize! * 0.85,
    ),
    h1: theme.textTheme.headlineSmall?.copyWith(
      color: colorScheme.onBackground,
    ),
    h1Padding: EdgeInsets.zero,
    h2: theme.textTheme.titleLarge?.copyWith(
      color: colorScheme.onBackground,
    ),
    h2Padding: EdgeInsets.zero,
    h3: theme.textTheme.titleMedium?.copyWith(
      color: colorScheme.onBackground,
    ),
    h3Padding: EdgeInsets.zero,
    h4: theme.textTheme.bodyLarge?.copyWith(
      color: colorScheme.onBackground,
    ),
    h4Padding: EdgeInsets.zero,
    h5: theme.textTheme.bodyLarge?.copyWith(
      color: colorScheme.onBackground,
    ),
    h5Padding: EdgeInsets.zero,
    h6: theme.textTheme.bodyLarge?.copyWith(
      color: colorScheme.onBackground,
    ),
    h6Padding: EdgeInsets.zero,
    em: const TextStyle(fontStyle: FontStyle.italic),
    strong: const TextStyle(fontWeight: FontWeight.bold),
    del: const TextStyle(decoration: TextDecoration.lineThrough),
    blockquote: theme.textTheme.bodyMedium?.copyWith(
      color: colorScheme.onBackground,
    ),
    img: theme.textTheme.bodyMedium?.copyWith(
      color: colorScheme.onBackground,
    ),
    checkbox: theme.textTheme.bodyMedium!.copyWith(
      color: theme.primaryColor,
    ),
    blockSpacing: 8.0,
    listIndent: 24.0,
    listBullet: theme.textTheme.bodyMedium?.copyWith(
      color: colorScheme.onBackground,
    ),
    listBulletPadding: const EdgeInsets.only(right: 4),
    tableHead: const TextStyle(fontWeight: FontWeight.w600),
    tableBody: theme.textTheme.bodyMedium?.copyWith(
      color: colorScheme.onBackground,
    ),
    tableHeadAlign: TextAlign.center,
    tableBorder: TableBorder.all(
      color: theme.dividerColor,
    ),
    tableColumnWidth: const FlexColumnWidth(),
    tableCellsPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
    tableCellsDecoration: const BoxDecoration(),
    blockquotePadding: const EdgeInsets.all(8.0),
    blockquoteDecoration: BoxDecoration(
      color: Colors.blue.shade100,
      borderRadius: BorderRadius.circular(2.0),
    ),
    codeblockPadding: const EdgeInsets.all(8.0),
    codeblockDecoration: BoxDecoration(
      color: theme.cardTheme.color ?? theme.cardColor,
      borderRadius: BorderRadius.circular(2.0),
    ),
    horizontalRuleDecoration: BoxDecoration(
      border: Border(
        top: BorderSide(
          width: 5.0,
          color: theme.dividerColor,
        ),
      ),
    ),
  );
}
