import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
            top: 170,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const TaskList(
                    tasks: [],
                  ),
                  const Gap(20),
                  Text(
                    'Completed.',
                    style: context.textTheme.headlineMedium,
                  ),
                  const TaskList(
                    tasks: [],
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
        ],
      ),
    );
  }
}
