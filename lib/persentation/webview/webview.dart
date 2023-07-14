import 'dart:async';

import 'package:standart_project/persentation/core/functions/button_icon_leading.dart';
import 'package:standart_project/persentation/core/utils/styles/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';
import 'package:webview_flutter_web/webview_flutter_web.dart';

class WebviewPage extends StatefulWidget {
  const WebviewPage({Key? key}) : super(key: key);
  @override
  State<WebviewPage> createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {
  final PlatformWebViewController _controller = PlatformWebViewController(
    const PlatformWebViewControllerCreationParams(),
  )
    ..addJavaScriptChannel(JavaScriptChannelParams(
        name: 'Print',
        onMessageReceived: (JavaScriptMessage message) {
          print(message.message);
        }))
    ..loadRequest(
      LoadRequestParams(
        uri: Uri.parse('https://games.monstercode.net/panjat-pinang/'),
      ),
    );

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) => getMessage());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: PlatformWebViewWidget(
        PlatformWebViewWidgetCreationParams(controller: _controller),
      ).build(context),
    );
  }
}
