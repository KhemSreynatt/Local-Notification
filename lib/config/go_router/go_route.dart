import 'package:go_router/go_router.dart';
import 'package:masmas_food_delivery/module/home/pages/home.dart';
import 'package:masmas_food_delivery/module/splash_screen.dart';

final router = GoRouter(routes: [
  GoRoute(
      path: "/",
      name: "SplashScreen",
      builder: (context, state) => const SplashScreen(),
      routes: [
        GoRoute(
          path: "home",
          name: "home",
          builder: (context, state) => const HomePage(),
        )
      ])
]);
