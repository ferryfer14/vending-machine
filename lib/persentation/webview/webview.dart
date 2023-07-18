import 'dart:html';
import 'dart:ui' as ui;
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:standart_project/routes/app_router.dart';

class WebviewPage extends StatefulWidget {
  const WebviewPage({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  State<WebviewPage> createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {
  int i = 0;
  IFrameElement _iFrameElement = IFrameElement();

  @override
  void initState() {
    _iFrameElement.src = widget.url;
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
      (int viewId) => _iFrameElement,
    );

    _iFrameElement.onLoad.listen((event) {
      // Send message to iframe when loaded
      _iFrameElement.contentWindow
          ?.postMessage('Hello! Clicked: $i times', "*");
    });
    // Get message from iframe
    window.addEventListener("message", (event) {
      var data = (event as MessageEvent).data ?? '-';
      if (data != null) {
        AutoRouter.of(context).replace(const CaraouselRoute());
      }
      print("${data},aaa");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: HtmlElementView(
          key: UniqueKey(),
          viewType: 'iframeElement',
        ),
      ),
    );
  }
}
