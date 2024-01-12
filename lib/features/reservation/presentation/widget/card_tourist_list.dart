import 'package:flutter/material.dart';
import 'package:test_application/features/reservation/presentation/widget/card_tourist.dart';
import 'package:test_application/style/color_app.dart';

class CardTouristList extends StatefulWidget {
  const CardTouristList({super.key});

  @override
  State<CardTouristList> createState() => _CardTouristListState();
}

class _CardTouristListState extends State<CardTouristList> {
  final List<Widget> _touristList = [];
  final List<String> _titleList = [
    'Первый турист',
    'Второй турист',
    'Третий турист',
    'Четвертый турист',
    'Пятый турист',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ..._touristList,
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Row(
            children: [
              const Text('Добавить туриста'),
              const Spacer(),
              InkWell(
                onTap: () {
                  if (_touristList.length < 5) {
                    setState(() {});
                    String titile = _titleList[(_touristList.length)];
                    _touristList.add(
                      CardTourist(
                        title: titile,
                      ),
                    );
                  }
                },
                child: Container(
                  width: 32,
                  height: 32,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: text3Color,
                      borderRadius: BorderRadius.circular(6)),
                  child: const Icon(
                    Icons.add,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
