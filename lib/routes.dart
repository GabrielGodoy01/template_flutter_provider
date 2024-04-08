import 'package:go_router/go_router.dart';
import 'package:template_flutter_provider/app/presentation/pages/home_page.dart';
import 'package:template_flutter_provider/app/presentation/pages/splash_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: routePaths.home,
      builder: (context, state) => const HomePage(),
    ),
  ],
);

const routePaths = (home: '/home',);
