import 'package:go_router/go_router.dart';
import 'package:masmas_food_delivery/module/splash_screen/onbording.dart';
import 'package:masmas_food_delivery/module/splash_screen/onbording1.dart';
import 'package:masmas_food_delivery/module/splash_screen/splash_screen.dart';

import '../../module/home/screen/home_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      name: "SplashScreen",
      builder: (context, state) => const SplashScreen(),
      routes: [
        GoRoute(
          path: "onbording",
          name: "onbording",
          builder: (context, state) => const OnbordingScreen(),
        ),
        GoRoute(
          path: "onbordingone",
          name: "onbordingone",
          builder: (context, state) => const OnbordingScreen1(),
        ),
        GoRoute(
          path: "homepage",
          name: "homepage",
          builder: (context, state) => const MyNavbar(),
        )
      ],
    )
  ],
  urlPathStrategy: UrlPathStrategy.path,
);
