import '../../screens/screens.dart';
import 'package:go_router/go_router.dart';

import 'routes.dart';

final appRoutes = [
  GoRoute(path: RouteLocation.home, parentNavigatorKey: navigationKey, builder: HomeScreen.builder),
  GoRoute(path: RouteLocation.createTask, parentNavigatorKey: navigationKey, builder: CreateTaskScreen.builder),
];
