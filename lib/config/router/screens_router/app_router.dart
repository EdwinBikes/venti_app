import 'package:go_router/go_router.dart';
import 'package:venti_app/presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      path: '/',
      name: LandingScreen.name,
      builder: (context, state) => const LandingScreen()),
  GoRoute(
      path: '/home-screen',
      name: HomeScreen.name,
      builder: (context, state) => const LoginScreen()),
  GoRoute(
      path: '/login-screen',
      name: LoginScreen.name,
      builder: (context, state) => const LoginScreen()),
]);
