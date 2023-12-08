import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImagePreview extends StatelessWidget {
  const ImagePreview({super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return SizedBox(
      height: 190,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            child: ListenableBuilder(
              listenable: controller,
              builder: (context, _) {
                return ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: controller.text,
                    fit: BoxFit.cover,
                    errorWidget: (context, _, __) {
                      return Card(
                        margin: EdgeInsets.zero,
                        color: colorScheme.tertiaryContainer,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          child: Align(
                            alignment: const Alignment(0,-0.4),
                            child: Text(
                              'Здесь будет предпросмотр изображения. Введите ссылку',
                              textAlign: TextAlign.center,
                              style: textTheme.bodyLarge?.copyWith(
                                color: colorScheme.onTertiaryContainer,
                                // overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: TextField(
                    textAlign: TextAlign.start,
                    controller: controller,
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onBackground,
                      overflow: TextOverflow.ellipsis,
                    ),
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      fillColor: colorScheme.surface,
                      hintText: 'Url изображения',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
