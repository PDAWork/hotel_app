import 'package:flutter/material.dart';
import 'package:test_application/features/reservation/presentation/widget/custom_text_filed.dart';
import 'package:test_application/style/color_app.dart';

class CardTourist extends StatefulWidget {
  const CardTourist({super.key, required this.title});
  final String title;
  @override
  State<CardTourist> createState() => _CardTouristState();
}

class _CardTouristState extends State<CardTourist> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: AnimatedCrossFade(
        firstChild: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Row(
            children: [Text(widget.title), const Spacer(), _iconButtonCustom()],
          ),
        ),
        secondChild: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(widget.title),
                  const Spacer(),
                  _iconButtonCustom()
                ],
              ),
              const SizedBox(height: 17),
              const CustomTextField(
                lable: 'Имя',
              ),
              const SizedBox(height: 8),
              const CustomTextField(
                lable: 'Фамилия',
              ),
              const SizedBox(height: 8),
              const CustomTextField(
                lable: 'Дата рождения',
              ),
              const SizedBox(height: 8),
              const CustomTextField(
                lable: 'Гражданство',
              ),
              const SizedBox(height: 8),
              const CustomTextField(
                lable: 'Номер загранпаспорта',
              ),
              const SizedBox(height: 8),
              const CustomTextField(
                lable: 'Срок действия загранпаспорта',
              ),
            ],
          ),
        ),
        crossFadeState:
            _isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: const Duration(milliseconds: 400),
      ),
    );
  }

  InkWell _iconButtonCustom() {
    return InkWell(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: Container(
        width: 32,
        height: 32,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: card3Color, borderRadius: BorderRadius.circular(6)),
        child: RotationTransition(
          turns: AlwaysStoppedAnimation(_isExpanded ? 0.25 : 0.75),
          child: const Icon(
            Icons.arrow_back_ios_new,
            size: 16,
            color: text3Color,
          ),
        ),
      ),
    );
  }
}
