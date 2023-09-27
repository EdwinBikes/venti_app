import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:venti_app/export_links.dart';

class EditCashRegisterScreen extends StatelessWidget {
  static const name = 'editcashregister-screen';
  const EditCashRegisterScreen({super.key});

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
                'Modificar caja registradora',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            const SizedBox(height: 80),
            const Center(
              child: CircleAvatar(
                maxRadius: 40,
                child: ActionIconTheme(
                  data: ActionIconThemeData(),
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: CustomTextField(
                labelText: 'Nombre y apellidos',
                hintText: 'Nombre completo',
                keyboardType: TextInputType.name,
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: CustomTextField(
                labelText: 'Numero de Documento',
                hintText: 'CC, Carné, NIT',
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(height: 30),
            const Spacer(),
            const TextBottomScreens(
              textPrimary: 'Ver cajeros ',
              textSecund: 'Creados',
              textDestination: '/totalcashiers-screen',
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
