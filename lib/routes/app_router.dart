import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_application/dj/service_locator.dart';
import 'package:test_application/features/hotel/presentation/cubit/hotel_cubit.dart';
import 'package:test_application/features/hotel/presentation/hotel.dart';
import 'package:test_application/features/nomer/domain/use_case/nomer_use_case.dart';
import 'package:test_application/features/nomer/presentation/cubit/nomer_cubit.dart';
import 'package:test_application/features/nomer/presentation/nomer.dart';
import 'package:test_application/features/pay/presentation/pay.dart';
import 'package:test_application/features/reservation/domain/use_case/reservation_use_case.dart';
import 'package:test_application/features/reservation/presentation/cubit/reservation_cubit.dart';
import 'package:test_application/features/reservation/presentation/reservation.dart';

import 'router_utils.dart';

class AppRouter {
  static GoRouter get router => _router;

  static final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
          path: Pages.hotel.screenPath,
          name: Pages.hotel.screenName,
          builder: (context, state) => BlocProvider(
                create: (context) => sl<HotelCubit>()..init(),
                child: const Hotel(),
              ),
          routes: [
            GoRoute(
              path: Pages.nomer.screenPath,
              name: Pages.nomer.screenName,
              builder: (context, state) {
                final data = state.extra as Map<String, dynamic>;
                // final title = state.pathParameters['title'] ?? "Название отеля";
                return BlocProvider(
                  create: (context) => sl<NomerCubit>()..init(),
                  child: Nomer(title: data['title']),
                );
              },
              routes: [
                GoRoute(
                  path: Pages.reservation.screenPath,
                  name: Pages.reservation.screenName,
                  builder: (context, state) {
                    final data = state.extra as Map<String, dynamic>;
                    return BlocProvider(
                      create: (context) => sl<ReservationCubit>()..init(),
                      child: Reservation(title: data['title']),
                    );
                  },
                  routes: [
                    GoRoute(
                      path: Pages.pay.screenPath,
                      name: Pages.pay.screenName,
                      builder: (context, state) {
                        final data = state.extra as Map<String, dynamic>;
                        return Pay(title: data['title']);
                      },
                    )
                  ],
                )
              ],
            ),
          ]),
    ],
  );
}
