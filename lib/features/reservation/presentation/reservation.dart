import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:test_application/features/reservation/presentation/widget/card_tourist_list.dart';
import 'package:test_application/features/reservation/presentation/widget/custom_text_filed.dart';
import 'package:test_application/style/color_app.dart';

class Reservation extends StatelessWidget {
  Reservation({super.key});
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
      body: Column(
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
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.star,
                                size: 15,
                                color: text2Color,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "5 Превосхдно",
                                style:
                                    TextStyle(fontSize: 16, color: text2Color),
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
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
                        style: TextStyle(
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
                  child: const Column(
                    children: [
                      TextInfoReservation(
                        leftTitle: 'Вылет из',
                        rightTitle: 'Санкт-Петербург',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextInfoReservation(
                        leftTitle: 'Страна, город',
                        rightTitle: 'Египет, Хургада',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextInfoReservation(
                        leftTitle: 'Даты',
                        rightTitle: '19.09.2023 – 27.09.2023',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextInfoReservation(
                        leftTitle: 'Кол-во ночей',
                        rightTitle: '7 ночей',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextInfoReservation(
                        leftTitle: 'Отель',
                        rightTitle: 'Steigenberger Makadi',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextInfoReservation(
                        leftTitle: 'Номер',
                        rightTitle: 'Стандартный с видом на бассейн или сад',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextInfoReservation(
                        leftTitle: 'Питание',
                        rightTitle: 'Все включено',
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
                        errorText: 'Проверьте корректность заполнения поля',
                      ),
                      const SizedBox(height: 8),
                      CustomTextField(
                        lable: 'Почта',
                        controller: _controllerEmail,
                        keyboardType: TextInputType.emailAddress,
                        regExp:
                            RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+'),
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
                  child: const Column(
                    children: [
                      Cost(leftTitle: 'Тур', rigthTitle: '186 600 ₽'),
                      SizedBox(height: 16),
                      Cost(leftTitle: 'Топливный сбор', rigthTitle: '9 300 ₽'),
                      SizedBox(height: 16),
                      Cost(leftTitle: 'Сервисный сбор', rigthTitle: '2 136 ₽'),
                      SizedBox(height: 16),
                      Cost(
                        leftTitle: 'К оплате',
                        rigthTitle: '198 036 ₽',
                        colorTitileRigth: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
            decoration: const BoxDecoration(color: Colors.white),
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
                    onPressed: () {},
                    child: const Text('К выбору номера'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

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
