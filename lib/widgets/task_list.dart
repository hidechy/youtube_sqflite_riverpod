import 'package:flutter/material.dart';

import '../data/models/task.dart';
import 'widgets.dart';

import '../utils/utils.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
    required this.tasks,
    this.isCompletedTasks = false,
  });

  final List<Task> tasks;
  final bool isCompletedTasks;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;

    final emptyTasksMessage = isCompletedTasks ? 'empty completed tasks.' : 'empty tasks.';

    return CommonContainer(
      height: deviceSize.height * 0.3,
      widget: tasks.isEmpty
          ? Center(
              child: Text(
                emptyTasksMessage,
                style: context.textTheme.headlineSmall,
              ),
            )
          : ListView.builder(
              shrinkWrap: true,
              itemCount: tasks.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return const Text('home');
              },
            ),
    );
  }
}
