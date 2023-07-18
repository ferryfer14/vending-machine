// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    CaraouselRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CaraouselPage(),
      );
    },
    ProductRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const ProductPage(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    WebviewRoute.name: (routeData) {
      final args = routeData.argsAs<WebviewRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: WebviewPage(
          key: args.key,
          url: args.url,
        ),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          CaraouselRoute.name,
          path: '/',
        ),
        RouteConfig(
          ProductRoute.name,
          path: 'product',
        ),
        RouteConfig(
          WebviewRoute.name,
          path: 'webview',
        ),
      ];
}

/// generated route for
/// [CaraouselPage]
class CaraouselRoute extends PageRouteInfo<void> {
  const CaraouselRoute()
      : super(
          CaraouselRoute.name,
          path: '/',
        );

  static const String name = 'CaraouselRoute';
}

/// generated route for
/// [ProductPage]
class ProductRoute extends PageRouteInfo<void> {
  const ProductRoute()
      : super(
          ProductRoute.name,
          path: 'product',
        );

  static const String name = 'ProductRoute';
}

/// generated route for
/// [WebviewPage]
class WebviewRoute extends PageRouteInfo<WebviewRouteArgs> {
  WebviewRoute({
    Key? key,
    required String url,
  }) : super(
          WebviewRoute.name,
          path: 'webview',
          args: WebviewRouteArgs(
            key: key,
            url: url,
          ),
        );

  static const String name = 'WebviewRoute';
}

class WebviewRouteArgs {
  const WebviewRouteArgs({
    this.key,
    required this.url,
  });

  final Key? key;

  final String url;

  @override
  String toString() {
    return 'WebviewRouteArgs{key: $key, url: $url}';
  }
}
