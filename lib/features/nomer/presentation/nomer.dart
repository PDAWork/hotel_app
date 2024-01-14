import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_application/features/nomer/presentation/cubit/nomer_cubit.dart';
import 'package:test_application/routes/app_router.dart';
import 'package:test_application/routes/router_utils.dart';
import 'package:test_application/style/color_app.dart';
import 'package:test_application/core/widget/carusel_app.dart';

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
      body: BlocBuilder<NomerCubit, NomerState>(
        builder: (context, state) {
          return switch (state) {
            NomerError() => const Center(child: Text('Упс, ошибка')),
            NomerSuccess(:final entityList) => ListView.builder(
                itemCount: entityList.length,
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
                        CaruselApp(imgUrl: entityList[index].imgUrl),
                        const SizedBox(height: 8),
                        Text(
                          entityList[index].name,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Wrap(
                          children: entityList[index]
                              .peculiarities
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
                                style: TextStyle(color: text3Color),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 16,
                                color: text3Color,
                              )
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "${entityList[index].price} ₽",
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              entityList[index].pricePer,
                              style: const TextStyle(
                                fontSize: 16,
                                color: text4Color,
                              ),
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
                                    extra: {"title": title}
                                    // pathParameters: {
                                    //   "title": title,
                                    // },
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
            _ => const Center(
                child: CircularProgressIndicator(),
              )
          };
        },
      ),
    );
  }
}
