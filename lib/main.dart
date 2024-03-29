import 'dart:async';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:masmas_food_delivery/firebase_options.dart';
import 'package:masmas_food_delivery/utils/helper/notification_helper.dart';

import 'config/go_router/go_route.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await AppTrackingTransparency.requestTrackingAuthorization();
      await NotificationHelper.initial();
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      FlutterError.onError =
          FirebaseCrashlytics.instance.recordFlutterFatalError;
      runApp(const MyApp());
    },
    (error, stackTrace) {
      FirebaseCrashlytics.instance.recordError(error, stackTrace, fatal: true);
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    // return MaterialApp.router(
    //   debugShowCheckedModeBanner: false,
    //   routerDelegate: appRouter.delegate(
    //     navigatorObservers: () =>
    //         [FirebaseAnalyticsObserver(analytics: analytics)],
    //   ),
    //   routeInformationParser: appRouter.defaultRouteParser(),
    // );
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        routeInformationProvider: router.routeInformationProvider);
  }
}
