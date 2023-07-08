import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleDetailScreen extends StatelessWidget {
  const ArticleDetailScreen(
      {super.key, required this.id, required this.title, required this.url});

  final String id;
  final String title;
  final String url;

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('記事')),
    body: WebViewWidget(controller: controller()),
  );
}


WebViewController controller() => WebViewController()
  ..setBackgroundColor(const Color(0x00000000))
  ..setNavigationDelegate(
    NavigationDelegate(
      onNavigationRequest: (NavigationRequest request) {
        return NavigationDecision.navigate;
      },
    ),
  )
  ..loadRequest(Uri.parse(url));
}
