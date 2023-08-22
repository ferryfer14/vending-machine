import 'package:flutter/material.dart';
import "package:webview_universal/webview_universal.dart";

class WebviewPage extends StatefulWidget {
  const WebviewPage({Key? key, required this.url}) : super(key: key);
  final String url;
  @override
  State<WebviewPage> createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {
  WebViewController webViewController = WebViewController();

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) => getMessage());
    webViewController.init(
      context: context,
      setState: setState,
      uri: Uri.parse(widget.url),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: WebView(
      controller: webViewController,
    ));
  }
}
