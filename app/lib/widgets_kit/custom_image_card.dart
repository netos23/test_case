import 'package:flutter/material.dart';

class CustomImageCard extends StatelessWidget {
  CustomImageCard({
    super.key,
    required String image,
    required this.child,
    this.onTap,
    this.leading,
  }) : image = AssetImage(image);

  final Widget? leading;
  final ImageProvider image;
  final VoidCallback? onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
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
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        if (leading != null) Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: leading,
                        ),
                        Flexible(
                          child: child,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
