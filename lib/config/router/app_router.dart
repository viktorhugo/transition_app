import 'package:go_router/go_router.dart';
import 'package:transition_app/screens/screen_1.dart';
import 'package:transition_app/screens/screen_2.dart';

final appRouter = GoRouter(
  initialLocation: '/screen-1',
  routes: [
    ///* Auth Routes
    GoRoute(
      path: '/screen-1',
      builder: (context, state) => const Screen1(),
    ),
    GoRoute(
      path: '/screen-2',
      builder: (context, state) => const Screen2(),
    ),
  ],
);