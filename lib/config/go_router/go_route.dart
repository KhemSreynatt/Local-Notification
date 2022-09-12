import 'package:go_router/go_router.dart';
import 'package:masmas_food_delivery/module/splash_screen.dart';

import '../../module/home/home_page.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: "/",
    name: "SplashScreen",
    builder: (context, state) => const SplashScreen(),
    routes: [
      GoRoute(
        path: "homepage",
        name: "homepage",
        builder: (context, state) => const MyNavbar(),
        // routes: [
        //   GoRoute(
        //     path: "home",
        //     name: "home",
        //     builder: (context, state) => const HomeScreen(),
        //   ),
        //   GoRoute(
        //     path: "profile",
        //     name: "profile",
        //     builder: (context, state) => const ProfilePage(),
        //   ),
        //   GoRoute(
        //     path: "cart",
        //     name: "chart",
        //     builder: (context, state) => const CartScreen(),
        //   ),
        //   GoRoute(
        //     path: "chart",
        //     name: "chart",
        //     builder: (context, state) => const ChatScreen(),
        //   ),
        // ]),
      )
    ],
  )
]);
