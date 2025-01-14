import 'package:cary/core/utils/routes.dart';
import 'package:cary/features/main_screens/home_screen.dart';

import 'package:cary/features/main_screens/home_widgets/main_screen.dart';
import 'package:cary/features/on_boarding_screens/views/find_screen.dart';
import 'package:cary/features/service_screen/car_rescue_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/service_screen/call_ambulance_screen.dart';
import '../../features/service_screen/report_accident.dart';


class GroupRoutes {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: RoutesName.findScreen,
        path: "/",
        builder: (context, state) => const FindScreen(),
      ),
      GoRoute(
        name: RoutesName.mainScreen,
        path: "/mainScreen",
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        name: RoutesName.homeScreen,
        path: "/homeScreen",
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        name: RoutesName.reportAccident,
        path: "/reportAccident",
        builder: (context, state) => const ReportAccident(),
      ),
      GoRoute(
        name: RoutesName.callAmbulance,
        path: "/callAmbulance",
        builder: (context, state) => const CallAmbulanceScreen(),
      ),
      GoRoute(
        name: RoutesName.carRescue,
        path: "/carRescue",
        builder: (context, state) => const CarRescue(),
      ),


    ],
  );
}
