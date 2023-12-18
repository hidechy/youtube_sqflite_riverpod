import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../data/data.dart';
import '../widgets/widgets.dart';
import '../utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Gap(30),
                      DisplayWhiteText(text: 'Aug 7, 2023', fontSize: 20),
                      DisplayWhiteText(
                        text: 'My Todo List',
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 140,
            left: 0,
            right: 0,
            child: SafeArea(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const TaskList(
                      tasks: [
                        Task(
                          category: TaskCategories.work,
                          title: 'title',
                          time: '10:00',
                          date: '2023-12-18',
                          note: 'note',
                          isCompleted: false,
                        ),
                        Task(
                          category: TaskCategories.shopping,
                          title: 'title',
                          time: '10:00',
                          date: '2023-12-18',
                          note: 'note',
                          isCompleted: false,
                        )
                      ],
                    ),
                    const Gap(20),
                    Text(
                      'Completed.',
                      style: context.textTheme.headlineMedium,
                    ),
                    const TaskList(
                      tasks: [
                        Task(
                          category: TaskCategories.home,
                          title: 'title',
                          time: '10:00',
                          date: '2023-12-18',
                          note: 'note',
                          isCompleted: true,
                        ),
                        Task(
                          category: TaskCategories.education,
                          title: 'title',
                          time: '10:00',
                          date: '2023-12-18',
                          note: 'note',
                          isCompleted: true,
                        )
                      ],
                      isCompletedTasks: true,
                    ),
                    const Gap(20),
                    ElevatedButton(
                      onPressed: () {},
                      child: const DisplayWhiteText(
                        text: 'Add New Tasks.',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
