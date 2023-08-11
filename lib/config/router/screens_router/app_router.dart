import 'package:go_router/go_router.dart';
import 'package:venti_app/export_links.dart';
import 'package:venti_app/presentation/screens/login/create_dates.dart';
import 'package:venti_app/presentation/screens/login/forgot_password.dart';
import 'package:venti_app/presentation/screens/login/new_password.dart';
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
  GoRoute(
    path: '/forgot-screen',
    name: ForgotScreen.name,
    builder: (context, state) => const ForgotScreen(),
  ),
  GoRoute(
    path: '/newpassword-screen',
    name: NewPasswordScreen.name,
    builder: (context, state) => const NewPasswordScreen(),
  ),
  GoRoute(
    path: '/createdates-screen',
    name: CreateDatesScreen.name,
    builder: (context, state) => const CreateDatesScreen(),
  ),
]);
