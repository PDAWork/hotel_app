import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_application/routes/app_router.dart';
import 'package:test_application/routes/router_utils.dart';
import 'package:test_application/style/color_app.dart';

class Pay extends StatelessWidget {
  const Pay({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Spacer(),
          Center(
            child: ClipOval(
              child: Container(
                padding: const EdgeInsets.all(25),
                color: background,
                child: Image.asset(
                  'assets/img_pay.png',
                  height: 44,
                  width: 44,
                ),
              ),
            ),
          ),
          const SizedBox(height: 32),
          const Text(
            'Ваш заказ принят в работу',
            style: TextStyle(
              color: text1Color,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 23),
            child: Text(
              'Подтверждение заказа №${Random.secure().nextInt(999999) + 100000} может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.',
              textAlign: TextAlign.center,
              style: const TextStyle(color: text4Color, fontSize: 16),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.only(left: 16, top: 12, right: 16),
            decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: Color(0xffE8E9EC)))),
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
                      AppRouter.router.go(Pages.hotel.screenPath);
                    },
                    child: const Text('Супер!'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
