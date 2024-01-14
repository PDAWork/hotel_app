import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_application/features/hotel/presentation/cubit/hotel_cubit.dart';
import 'package:test_application/features/hotel/presentation/widget/card_app.dart';
import 'package:test_application/routes/app_router.dart';
import 'package:test_application/routes/router_utils.dart';
import 'package:test_application/style/color_app.dart';

import '../../../core/widget/carusel_app.dart';

const List<String> gen = [
  "3-я линия",
  "Платный Wi-Fi в фойе",
  "30 км до аэропорта",
  "1 км до пляжа"
];

class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Отель',
          style: TextStyle(
            fontSize: 18,
            color: text1Color,
          ),
        ),
      ),
      body: BlocBuilder<HotelCubit, HotelState>(
        builder: (context, state) {
          return switch (state) {
            HotelSuccess(:final entity) => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(12),
                              ),
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.only(
                              left: 16,
                              bottom: 16,
                              right: 16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CaruselApp(imgUrl: entity.imageUrls),
                                const SizedBox(height: 16),
                                // Star
                                Container(
                                  decoration: BoxDecoration(
                                    color: card2Color,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          size: 15,
                                          color: text2Color,
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        Text(
                                          "${entity.rating} ${entity.ratingName}",
                                          style: const TextStyle(
                                              fontSize: 16, color: text2Color),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                // Name otel

                                const SizedBox(height: 8),

                                const Text(
                                  'Steigenberger Makadi',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600),
                                ),

                                const SizedBox(height: 8),

                                Text(
                                  entity.adress,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: text3Color,
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'от ${entity.minimalPrice} ₽',
                                      style: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      entity.priceForIt,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: text4Color,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const Text(
                                  'Об отеле',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 16),
                                Wrap(
                                  children: entity.aboutTheHotel.peculiarities
                                      .map(
                                        (e) => Container(
                                          margin: const EdgeInsets.only(
                                              right: 8, bottom: 8),
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 5,
                                            horizontal: 10,
                                          ),
                                          decoration: BoxDecoration(
                                            color: card4Color,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Text(
                                            e,
                                            style: const TextStyle(
                                                color: text4Color),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                                Text(
                                  entity.aboutTheHotel.description,
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: card1Color,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Column(
                                    children: [
                                      CardApp(
                                        title: 'Удобвства',
                                        isPadding: true,
                                        isLineVisib: true,
                                        icon: 'assets/emoji_happy.svg',
                                      ),
                                      SizedBox(height: 10),
                                      CardApp(
                                        title: 'Что включено',
                                        isPadding: true,
                                        isLineVisib: true,
                                        icon: 'assets/tick_square.svg',
                                      ),
                                      SizedBox(height: 10),
                                      CardApp(
                                        title: 'Что не включено ',
                                        isPadding: false,
                                        isLineVisib: false,
                                        icon: 'assets/close_square.svg',
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 16, top: 12, right: 16),
                    decoration: const BoxDecoration(color: Colors.white),
                    child: SafeArea(
                      child: ElevatedButton(
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
                            Pages.nomer.screenName,
                            extra: {"title": 'Madinat Makadi'},
                            // pathParameters: {'title': 'Madinat Makadi'},
                          );
                        },
                        child: const Text('К выбору номера'),
                      ),
                    ),
                  )
                ],
              ),
            HotelError() => const Center(
                child: Text('Упс, ошибка'),
              ),
            _ => const Center(
                child: CircularProgressIndicator(),
              )
          };
        },
      ),
    );
  }
}
