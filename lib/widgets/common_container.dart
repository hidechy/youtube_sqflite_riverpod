import 'package:flutter/material.dart';

import '../utils/utils.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({super.key, required this.widget, this.height});

  final Widget widget;
  final double? height;

  ///
  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;

    return Container(
      width: deviceSize.width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colors.primaryContainer,
      ),
      child: widget,
    );
  }
}
