import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';

class OnBoardCircle extends StatelessWidget {
  final bool isSelected;
  const OnBoardCircle({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: CircleAvatar(
        backgroundColor: context.colors.onPrimary.withOpacity(isSelected ? 1 : 0.2),
        radius: isSelected ? 8 : 5,
      ),
    );
  }
}
