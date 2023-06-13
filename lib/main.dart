import 'dart:developer';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:awesome_notifications_fcm/awesome_notifications_fcm.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:standart_project/app_constant.dart';
import 'package:standart_project/routes/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'injection.dart';
import 'persentation/core/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDPlwIXRP0h6JOHoWrW5s-df92HitTTTf0",
            authDomain: "fe-vending.firebaseapp.com",
            projectId: "fe-vending",
            storageBucket: "fe-vending.appspot.com",
            messagingSenderId: "692980798939",
            appId: "1:692980798939:web:9cce01bbbf62bb96f4c3fe",
            measurementId: "G-EQPQS3XBZM"));
  } else {
    await Firebase.initializeApp();
  }
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}
