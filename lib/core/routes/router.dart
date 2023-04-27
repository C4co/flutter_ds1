import 'package:go_router/go_router.dart';
import '/views/views.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: 'buttons',
          builder: (context, state) => const ButtonPage(),
        ),
        GoRoute(
          path: 'inputs',
          builder: (context, state) => const InputPage(),
        ),
        GoRoute(
          path: 'snackbars',
          builder: (context, state) => const SnackBarPage(),
        ),
      ],
    ),
  ],
);
