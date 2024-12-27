import 'package:cary/core/utils/routes.dart';

import 'package:cary/features/main_screens/home_widgets/nav_screen.dart';
import 'package:go_router/go_router.dart';

class GroupRoutes {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: RoutesName.findScreen,
        path: "/",
        builder: (context, state) => const NavScreen(),
      ),
    ],
  );
}
