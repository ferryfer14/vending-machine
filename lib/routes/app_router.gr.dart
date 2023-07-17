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
    WebViewXRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const WebViewXPage(),
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
          WebViewXRoute.name,
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
/// [WebViewXPage]
class WebViewXRoute extends PageRouteInfo<void> {
  const WebViewXRoute()
      : super(
          WebViewXRoute.name,
          path: 'webview',
        );

  static const String name = 'WebViewXRoute';
}
