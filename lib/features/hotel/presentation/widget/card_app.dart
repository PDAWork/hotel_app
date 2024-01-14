import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_application/style/color_app.dart';

class CardApp extends StatelessWidget {
  const CardApp({
    super.key,
    required this.title,
    required this.isLineVisib,
    required this.isPadding,
    required this.icon,
  });

  final String title;
  final bool isLineVisib;
  final bool isPadding;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(icon),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            padding: isPadding ? const EdgeInsets.only(bottom: 10) : null,
            decoration: isLineVisib
                ? const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: line1Color),
                    ),
                  )
                : null,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      'Самое необходимое',
                      style: TextStyle(color: text4Color),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 24,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
