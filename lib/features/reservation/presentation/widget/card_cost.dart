import 'package:flutter/material.dart';

import '../../../../style/color_app.dart';

class Cost extends StatelessWidget {
  const Cost({
    super.key,
    required this.leftTitle,
    required this.rigthTitle,
    this.colorTitileRigth = true,
  });

  final String leftTitle;
  final String rigthTitle;
  final bool colorTitileRigth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftTitle,
          style: const TextStyle(
            color: text4Color,
            fontSize: 16,
          ),
        ),
        Text(
          rigthTitle,
          style: TextStyle(
            color: colorTitileRigth ? text1Color : text3Color,
            fontWeight: colorTitileRigth ? null : FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
