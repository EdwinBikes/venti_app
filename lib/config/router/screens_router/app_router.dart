import 'package:go_router/go_router.dart';
import 'package:venti_app/export_links.dart';
import 'package:venti_app/presentation/screens/login/register_screen.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: LandingScreen.name,
    builder: (context, state) => const LandingScreen(),
  ),
  GoRoute(
    path: '/home-screen',
    name: HomeScreen.name,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/login-screen',
    name: LoginScreen.name,
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: '/register-screen',
    name: RegisterScreen.name,
    builder: (context, state) => const RegisterScreen(),
  ),
]);
