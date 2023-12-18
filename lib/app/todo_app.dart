import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config/routes/routes.dart';

import '../config/config.dart';

class TodoApp extends ConsumerWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routesState = ref.watch(routesProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
//      home: const HomeScreen(),
      routerConfig: routesState,
    );
  }
}
