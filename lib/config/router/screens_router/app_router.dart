import 'package:go_router/go_router.dart';
import 'package:venti_app/presentation/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      path: '/',
      name: LandingScreen.name,
      builder: (context, state) => const LandingScreen()),
]);
