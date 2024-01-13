import 'package:flutter/material.dart';
import 'package:test_application/style/color_app.dart';

class TextInfoReservation extends StatelessWidget {
  const TextInfoReservation({
    super.key,
    required this.leftTitle,
    required this.rightTitle,
  });

  final String leftTitle;
  final String rightTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            leftTitle,
            style: const TextStyle(
              color: text4Color,
              fontSize: 16,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            rightTitle,
            style: const TextStyle(
              color: text1Color,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
