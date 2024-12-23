import 'package:cary/core/utils/routes.dart';
import 'package:go_router/go_router.dart';

import '../../features/on_boarding_screens/views/find_screen.dart';

class GroupRoutes {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: RoutesName.findScreen,
        path: "/",
        builder: (context, state) => const FindScreen(),
      ),
    ],
  );
}
