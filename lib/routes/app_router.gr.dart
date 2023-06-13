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
      final args = routeData.argsAs<CaraouselRouteArgs>(
          orElse: () => const CaraouselRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: CaraouselPage(key: args.key),
      );
    },
    FormRoute.name: (routeData) {
      final args =
          routeData.argsAs<FormRouteArgs>(orElse: () => const FormRouteArgs());
      return CustomPage<dynamic>(
        routeData: routeData,
        child: FormPage(key: args.key),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>(
          orElse: () => const ProductRouteArgs());
      return CustomPage<dynamic>(
        routeData: routeData,
        child: ProductPage(key: args.key),
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
          FormRoute.name,
          path: 'form',
        ),
        RouteConfig(
          ProductRoute.name,
          path: 'product',
        ),
      ];
}

/// generated route for
/// [CaraouselPage]
class CaraouselRoute extends PageRouteInfo<CaraouselRouteArgs> {
  CaraouselRoute({Key? key})
      : super(
          CaraouselRoute.name,
          path: '/',
          args: CaraouselRouteArgs(key: key),
        );

  static const String name = 'CaraouselRoute';
}

class CaraouselRouteArgs {
  const CaraouselRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CaraouselRouteArgs{key: $key}';
  }
}

/// generated route for
/// [FormPage]
class FormRoute extends PageRouteInfo<FormRouteArgs> {
  FormRoute({Key? key})
      : super(
          FormRoute.name,
          path: 'form',
          args: FormRouteArgs(key: key),
        );

  static const String name = 'FormRoute';
}

class FormRouteArgs {
  const FormRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'FormRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ProductPage]
class ProductRoute extends PageRouteInfo<ProductRouteArgs> {
  ProductRoute({Key? key})
      : super(
          ProductRoute.name,
          path: 'product',
          args: ProductRouteArgs(key: key),
        );

  static const String name = 'ProductRoute';
}

class ProductRouteArgs {
  const ProductRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key}';
  }
}
