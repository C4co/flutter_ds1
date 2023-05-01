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
        GoRoute(
          path: 'texts',
          builder: (context, state) => const TextPage(),
        ),
        GoRoute(
          path: 'bottom-sheet',
          builder: (context, state) => const BottomSheetPage(),
        ),
        GoRoute(
          path: 'checkbox',
          builder: (context, state) => const CheckboxPage(),
        ),
        GoRoute(
          path: 'dialog',
          builder: (context, state) => const DialogPage(),
        ),
        GoRoute(
          path: 'chips',
          builder: (context, state) => const ChipsPage(),
        ),
      ],
    ),
  ],
);
