
import 'package:flutter/material.dart';

class SliverWordsList extends StatelessWidget {
  const SliverWordsList({
    super.key,
    required this.textController,
    required this.wordsStream,
    required this.hint,
    this.onTap,
    this.onDelete,
    required this.color,
    required this.textColor,
  });

  final Color color;
  final Color textColor;
  final String hint;
  final VoidCallback? onTap;
  final ValueSetter<String>? onDelete;
  final TextEditingController textController;
  final Stream<List<String>> wordsStream;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return StreamBuilder(
      stream: wordsStream,
      builder: (context, snapshot) {
        final words = snapshot.data ?? [];

        return SliverList(
          delegate: SliverChildBuilderDelegate(
                (context, index) {
              final absIndex = index ~/ 2;

              if (index.isOdd && words.isEmpty) {
                return null;
              }

              if (index.isOdd) {
                return const Divider(
                  height: 0,
                  thickness: 1,
                );
              }

              if (absIndex == words.length) {
                return TextField(
                  textAlign: TextAlign.start,
                  controller: textController,
                  style: textTheme.bodyMedium?.copyWith(
                    color: textColor,
                    overflow: TextOverflow.ellipsis,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: words.isEmpty
                          ? const BorderRadius.all(Radius.circular(16))
                          : const BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    suffixIcon: ListenableBuilder(
                      listenable: textController,
                      builder: (context, _) {
                        return Visibility(
                          visible: textController.text.isNotEmpty,
                          child: IconButton(
                            onPressed: onTap,
                            icon: const Icon(
                              Icons.add,
                            ),
                          ),
                        );
                      },
                    ),
                    filled: true,
                    fillColor: color,
                    hintText: hint,
                  ),
                );
              }

              final word = words[absIndex];
              return ListTile(
                shape: index == 0
                    ? const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                )
                    : null,
                tileColor: color,
                title: Text(word),
              );
            },
            childCount: words.length * 2 + 1,
          ),
        );
      },
    );
  }
}