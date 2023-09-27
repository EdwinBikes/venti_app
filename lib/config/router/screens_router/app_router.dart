import 'package:go_router/go_router.dart';
import 'package:venti_app/export_links.dart';
import 'package:venti_app/presentation/screens/cash_register/edit_cash_register.dart';
import 'package:venti_app/presentation/screens/cash_register/new_cash_register.dart';
import 'package:venti_app/presentation/screens/cash_register/total_cash_register.dart';
import 'package:venti_app/presentation/screens/cashiers/edit_cashier.dart';

final appRouter = GoRouter(initialLocation: '/home-screen', routes: [
  GoRoute(
    path: '/landing',
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
  GoRoute(
    path: '/newcashier-screen',
    name: NewCashierScreen.name,
    builder: (context, state) => const NewCashierScreen(),
  ),
  GoRoute(
    path: '/editcashier-screen',
    name: EditCashierScreen.name,
    builder: (context, state) => const EditCashierScreen(),
  ),
  GoRoute(
    path: '/totalcashiers-screen',
    name: TotalCashierScreen.name,
    builder: (context, state) => const TotalCashierScreen(),
  ),
  GoRoute(
    path: '/newcashregister-screen',
    name: NewCashRegisterScreen.name,
    builder: (context, state) => const NewCashRegisterScreen(),
  ),
  GoRoute(
    path: '/editcashregister-screen',
    name: EditCashRegisterScreen.name,
    builder: (context, state) => const EditCashRegisterScreen(),
  ),
  GoRoute(
    path: '/totalcashregister-screen',
    name: TotalCashRegisterScreen.name,
    builder: (context, state) => const TotalCashRegisterScreen(),
  ),
]);
