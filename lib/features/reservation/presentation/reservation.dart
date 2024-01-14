import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:test_application/features/reservation/presentation/cubit/reservation_cubit.dart';
import 'package:test_application/features/reservation/presentation/widget/card_tourist_list.dart';
import 'package:test_application/features/reservation/presentation/widget/custom_text_filed.dart';
import 'package:test_application/routes/app_router.dart';
import 'package:test_application/routes/router_utils.dart';
import 'package:test_application/style/color_app.dart';

import 'widget/card_cost.dart';
import 'widget/card_text_info_reservation.dart';

class Reservation extends StatelessWidget {
  Reservation({super.key, required this.title});
  final String title;
  final TextEditingController _controllerPhone = TextEditingController();
  final MaskTextInputFormatter _maskFormatterPhone = MaskTextInputFormatter(
    mask: '+7 (###) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
  );
  final TextEditingController _controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Бронирование"),
      ),
      body: BlocBuilder<ReservationCubit, ReservationState>(
        builder: (context, state) {
          return switch (state) {
            ReservationSucces(:final enitity) => Column(
                children: [
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.only(bottom: 10),
                      children: [
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                        "${enitity.horating} ${enitity.ratingName}",
                                        style: const TextStyle(
                                            fontSize: 16, color: text2Color),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              // Name otel

                              const SizedBox(height: 8),

                              Text(
                                enitity.hotelName,
                                style: const TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600),
                              ),

                              const SizedBox(height: 8),

                              Text(
                                enitity.hotelAdress,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: text3Color,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              TextInfoReservation(
                                leftTitle: 'Вылет из',
                                rightTitle: enitity.departure,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              TextInfoReservation(
                                leftTitle: 'Страна, город',
                                rightTitle: enitity.arrivalCountry,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              TextInfoReservation(
                                leftTitle: 'Даты',
                                rightTitle:
                                    '${enitity.tourDateStart} – ${enitity.tourDateStop}',
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              TextInfoReservation(
                                leftTitle: 'Кол-во ночей',
                                rightTitle: '${enitity.numberOfNights} ночей',
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const TextInfoReservation(
                                leftTitle: 'Отель',
                                rightTitle: 'Steigenberger Makadi',
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              TextInfoReservation(
                                leftTitle: 'Номер',
                                rightTitle: enitity.room,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              TextInfoReservation(
                                leftTitle: 'Питание',
                                rightTitle: enitity.nutrition,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Информация о покупателе',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 16),
                              CustomTextField(
                                lable: 'Номер телефона',
                                controller: _controllerPhone,
                                keyboardType: TextInputType.phone,
                                inputFormatters: [_maskFormatterPhone],
                                errorText:
                                    'Проверьте корректность заполнения поля',
                              ),
                              const SizedBox(height: 8),
                              CustomTextField(
                                lable: 'Почта',
                                controller: _controllerEmail,
                                keyboardType: TextInputType.emailAddress,
                                regExp: RegExp(
                                    r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+'),
                                errorText: 'Некорректный формат почты',
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: text4Color,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        const CardTouristList(),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Cost(
                                  leftTitle: 'Тур',
                                  rigthTitle: '${enitity.tourPrice} ₽'),
                              const SizedBox(height: 16),
                              Cost(
                                  leftTitle: 'Топливный сбор',
                                  rigthTitle: '${enitity.fuelCharge} ₽'),
                              const SizedBox(height: 16),
                              Cost(
                                  leftTitle: 'Сервисный сбор',
                                  rigthTitle: '${enitity.serviceCharge} ₽'),
                              const SizedBox(height: 16),
                              Cost(
                                leftTitle: 'К оплате',
                                rigthTitle: '${enitity.payPrice} ₽',
                                colorTitileRigth: false,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 16, top: 10, right: 16),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(
                          color: Color(0xffE8E9EC),
                        ),
                      ),
                    ),
                    child: SafeArea(
                      child: Column(
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
                                Pages.pay.screenName,
                                extra: {"title": title},
                              );
                            },
                            child: const Text('К выбору номера'),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ReservationError() => const Center(
                child: Text("Упс, ошибка"),
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
