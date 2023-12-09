import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BrowserOverlay extends StatelessWidget {
  const BrowserOverlay({
    super.key,
    required this.body,
    this.url = 'https://forks_and_dishes.ru',
    this.payUrl = 'https://forks_and_dishes.ru/pay',
    this.secure = true,
    this.onPop,
    this.onNext,
  });

  final VoidCallback? onPop;
  final VoidCallback? onNext;
  final String url;
  final String payUrl;
  final bool secure;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: const Color(0xFF353739),
        systemNavigationBarColor:  Colors.black,
        statusBarIconBrightness: Brightness.light,
      ),
      child: SafeArea(
        child: Scaffold(
          appBar: BrowserHeader(
            url: url,
            secure: secure,
          ),
          body: body,
          bottomNavigationBar: BrowserFooter(
            onPop: onPop,
            onNext: onNext,
          ),
        ),
      ),
    );
  }
}

class BrowserHeader extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String url;
  final bool secure;

  const BrowserHeader({
    super.key,
    this.preferredSize = const Size.fromHeight(50),
    required this.url,
    this.secure = true,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox.fromSize(
        size: preferredSize,
        child: ColoredBox(
          color: const Color(0xFF353739),
          child: Card(
            color: const Color(0xFF5F6367),
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20,
                ),
              ),
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: 7,
              vertical: 5,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Row(
                  children: [
                    Icon(
                      secure ? Icons.lock : Icons.lock_open,
                      color: secure ? Colors.green : Colors.red,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4.0,
                        ),
                        child: Text(
                          url,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      kIsWeb || Platform.isIOS
                          ? CupertinoIcons.share
                          : Icons.share,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BrowserFooter extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  final VoidCallback? onPop;
  final VoidCallback? onNext;

  const BrowserFooter({
    super.key,
    this.preferredSize = const Size.fromHeight(50),
    this.onPop,
    this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: preferredSize,
      child: ColoredBox(
        color: const Color(0xFF353739),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: onPop,
                icon: Icon(
                  Icons.arrow_back,
                  color: onPop != null ? Colors.white : Colors.white24,
                ),
              ),
              IconButton(
                onPressed: onPop,
                icon: Icon(
                  Icons.arrow_forward,
                  color: onNext != null ? Colors.white : Colors.white24,
                ),
              ),
              IconButton(
                onPressed: onPop,
                icon: const Icon(
                  CupertinoIcons.add_circled_solid,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: onPop,
                icon: const Icon(
                  CupertinoIcons.table,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: onPop,
                icon: const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
