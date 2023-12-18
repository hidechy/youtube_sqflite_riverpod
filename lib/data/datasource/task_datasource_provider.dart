import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'task_datasource.dart';

final taskDatasourceProvider = Provider<TaskDatasource>((ref) {
  return TaskDatasource();
});
