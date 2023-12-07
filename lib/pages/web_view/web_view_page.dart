import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

typedef NavigationRequestHandler = FutureOr<NavigationDecision> Function(
    NavigationRequest request);

@RoutePage()
class WebViewerPageWidget extends StatefulWidget {
  final String title;
  final String url;
  final ValueChanged<String>? onPageFinished;
  final NavigationRequestHandler? onNavigationRequest;
  final VoidCallback? onWillPop;
  final bool? hideAppbar;

  const WebViewerPageWidget({
    super.key,
    @queryParam this.title = '',
    @queryParam this.url = '',
    @queryParam this.onNavigationRequest,
    @queryParam this.onPageFinished,
    @queryParam this.onWillPop,
    @queryParam this.hideAppbar,
  });

  @override
  State<WebViewerPageWidget> createState() => _WebViewerPageWidgetState();
}

class _WebViewerPageWidgetState extends State<WebViewerPageWidget> {
  String get title => widget.title;

  String get url => widget.url;

  bool? get hideAppbar => widget.hideAppbar;

  WebViewController? controller;

  @override
  void initState() {
    super.initState();

    // if (Platform.isAndroid) {
    //   WebView.platform = SurfaceAndroidWebView();
    // }
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (String url) {
            if (widget.onPageFinished != null) {
              widget.onPageFinished!(url);
            }
          },
          onWebResourceError: (WebResourceError error) {
            debugPrint(error.description);
          },
          onNavigationRequest: widget.onNavigationRequest,
        ),
      )
      ..loadRequest(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: hideAppbar == true
          ? PreferredSize(
              preferredSize: const Size(0.0, 0.0), child: Container())
          : AppBar(
              title: Text(
                title,
              ),
              centerTitle: true,
              leading: GestureDetector(
                onTap: () {
                  if (widget.onWillPop != null) {
                    widget.onWillPop!();
                  } else {
                    Navigator.of(context).pop();
                  }
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                ),
              ),
            ),
      body: WebViewWidget(controller: controller!),
    );
  }
}
