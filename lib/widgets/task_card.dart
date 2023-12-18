import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/utils.dart';

import '../data/models/task.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
    required this.task,
    this.onCompleted,
  });

  final Task task;
  final Function(bool?)? onCompleted;

  @override
  Widget build(BuildContext context) {
    final style = context.textTheme;
    final textDecoration = task.isCompleted ? TextDecoration.lineThrough : TextDecoration.none;

    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: task.category.color,
          ),
          child: Center(
            child: Icon(
              task.category.icon,
              color: Colors.white,
            ),
          ),
        ),
        const Gap(20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                task.title,
                style: style.titleMedium?.copyWith(
                  decoration: textDecoration,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                task.time,
                style: style.titleMedium?.copyWith(
                  decoration: textDecoration,
                ),
              ),
            ],
          ),
        ),
        const Gap(20),
        Checkbox(
          value: task.isCompleted,
          onChanged: onCompleted,
        ),
      ],
    );
  }
}
