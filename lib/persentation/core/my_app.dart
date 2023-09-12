import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_switcher_plus/animated_switcher_plus.dart';
import 'package:auto_route/auto_route.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:curved_progress_bar/curved_progress_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';
import 'package:standart_project/app_constant.dart';
import 'package:standart_project/application/auth/auth_bloc.dart';
import 'package:standart_project/application/localization/localization_loader_bloc.dart';
import 'package:standart_project/injection.dart';
import 'package:standart_project/navigator_observe.dart';
import 'package:standart_project/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final router = getIt<AppRouter>();
  final pref = getIt<SharedPreferences>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<LocalizationLoaderBloc>()
                ..add(const LocalizationLoaderEvent.started(isRefresh: true))),
        ],
        child: BlocBuilder<LocalizationLoaderBloc, LocalizationLoaderState>(
            builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            scaffoldMessengerKey: snackbarKey,
            title: 'VM',
            routerDelegate: AutoRouterDelegate(
              router,
              navigatorObservers: () => [MyObserver()],
            ),
            routeInformationParser: router.defaultRouteParser(),
            locale: Locale(state.located),
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              DefaultMaterialLocalizations.delegate,
              AppLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
          );
        }));
  }
}
