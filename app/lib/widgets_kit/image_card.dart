import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  ImageCard({
    super.key,
    required String image,
    required this.title,
    this.onTap,
    this.leading,
    this.extensions = const [],
  }) : image = AssetImage(image);

  ImageCard.network({
    super.key,
    required String image,
    required this.title,
    this.onTap,
    this.leading,
    this.extensions = const [],
  }) : image = CachedNetworkImageProvider(image);

  final Widget? leading;
  final ImageProvider image;
  final String title;
  final VoidCallback? onTap;
  final List<Widget> extensions;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    final leading = this.leading;

    return Hero(
      tag: image,
      child: Material(
        elevation: 0,
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            onTap: onTap,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  child: Image(
                    image: image,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          if (leading != null) leading,
                          if (leading != null)
                            const SizedBox(
                              width: 16,
                            ),
                          Flexible(
                            child: Card(
                              elevation: 0,
                              margin: EdgeInsets.zero,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  title,
                                  style: textTheme.bodyLarge?.copyWith(
                                    color: colorScheme.onSurface,
                                    fontWeight: FontWeight.w500,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ...extensions,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
