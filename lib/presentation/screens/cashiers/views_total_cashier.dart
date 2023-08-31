import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:venti_app/export_links.dart';

class TotalCashierScreen extends StatelessWidget {
  static const name = 'totalcashiers-screen';
  const TotalCashierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: IconButton(
                onPressed: () => context.go('/home-screen'),
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Cajeros Creados',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
              child: CustomTextField(
                obscureText: true,
                labelText: 'Contraseña',
                hintText: 'Contraseña',
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            const SizedBox(height: 25),
            const Spacer(),
            const TextBottomScreens(
              textPrimary: 'Ver cajeros ',
              textSecund: 'Creados',
              textDestination: '/newcashier-screen',
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
