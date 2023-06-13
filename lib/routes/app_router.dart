import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../persentation/caraousel/caraousel_page.dart';
import '../persentation/form/form_page.dart';
import '../persentation/product/product.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: CaraouselPage, initial: true),
    CustomRoute(
      page: FormPage,
      path: 'form',
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      page: ProductPage,
      path: 'product',
      transitionsBuilder: TransitionsBuilders.slideLeft,
    )
  ],
)
class AppRouter extends _$AppRouter {}
