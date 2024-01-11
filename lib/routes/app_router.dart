import 'package:go_router/go_router.dart';
import 'package:test_application/features/nomer/presentation/nomer.dart';
import 'package:test_application/features/otel/presentation/otel.dart';
import 'package:test_application/features/reservation/presentation/reservation.dart';

import 'router_utils.dart';

class AppRouter {
  static GoRouter get router => _router;

  static final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
          path: Pages.otel.screenPath,
          name: Pages.otel.screenName,
          builder: (context, state) => const Otel(),
          routes: [
            GoRoute(
              path: Pages.nomer.screenPath,
              name: Pages.nomer.screenName,
              builder: (context, state) {
                final title = state.pathParameters['title'] ?? "Название отеля";
                return Nomer(title: title);
              },
              routes: [
                GoRoute(
                  path: Pages.reservation.screenPath,
                  name: Pages.reservation.screenName,
                  builder: (context, state) {
                    return const Reservation();
                  },
                )
              ],
            ),
          ]),
    ],
  );
}
