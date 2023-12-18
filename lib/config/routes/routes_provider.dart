import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:go_router/go_router.dart';

import 'app_routes.dart';
import 'routes_location.dart';

final navigationKey = GlobalKey<NavigatorState>();

final routesProvider = Provider<GoRouter>(
  (ref) => GoRouter(initialLocation: RouteLocation.home, navigatorKey: navigationKey, routes: appRoutes),
);
