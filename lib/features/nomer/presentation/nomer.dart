import 'package:flutter/material.dart';
import 'package:test_application/routes/app_router.dart';
import 'package:test_application/routes/router_utils.dart';
import 'package:test_application/style/color_app.dart';
import 'package:test_application/widget/carusel_app.dart';

const List<String> gen = ['Все включено', 'Кондиционер'];

class Nomer extends StatelessWidget {
  const Nomer({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(top: 8),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CaruselApp(),
                SizedBox(height: 8),
                const Text(
                  'Стандартный с видом на бассейн или сад',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Wrap(
                  children: gen
                      .map(
                        (e) => Container(
                          margin: const EdgeInsets.only(right: 8, bottom: 8),
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            color: card4Color,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            e,
                            style: const TextStyle(color: text4Color),
                          ),
                        ),
                      )
                      .toList(),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 8, bottom: 8),
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: card3Color,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Подробнее о номере',
                        style: const TextStyle(color: text3Color),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                        color: text3Color,
                      )
                    ],
                  ),
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '134 673 ₽',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'за 7 ночей с перелетом',
                      style: TextStyle(fontSize: 16, color: text4Color),
                    ),
                  ],
                ),
                const SizedBox(height: 19),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            // Change your radius here
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        fixedSize: const MaterialStatePropertyAll(
                          Size.fromHeight(44),
                        ),
                      ),
                      onPressed: () {
                        AppRouter.router.goNamed(
                          Pages.reservation.screenName,
                          pathParameters: {
                            "title": title,
                          },
                        );
                      },
                      child: const Text('К выбору номера'),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
