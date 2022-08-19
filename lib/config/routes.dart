import 'package:auto_route/annotations.dart';

import '../module/home/pages/home.dart';
import '../module/profile/page/profile.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: ProfilePage, path: '/profile'),
  ],
)
class $AppRouter {}
