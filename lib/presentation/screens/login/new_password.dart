import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:venti_app/export_links.dart';

class NewPasswordScreen extends StatelessWidget {
  static const name = 'newpassword-screen';
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
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
          const SizedBox(height: 35),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Crear una nueva contraseña',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Text(
              'Su nueva contraseña debe ser única y no haberla utilizado anteriormente.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
            child: CustomTextField(
              suffixIcon: true,
              obscureText: true,
              labelText: 'Nueva Contraseña',
              hintText: 'Se recomienda alfa, numérica',
              keyboardType: TextInputType.visiblePassword,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
            child: CustomTextField(
              suffixIcon: true,
              obscureText: true,
              labelText: 'Confirmar Contraseña',
              hintText: 'Confirma la contraseña',
              keyboardType: TextInputType.visiblePassword,
            ),
          ),
          const SizedBox(height: 30),
          const CustomButtonBlack(
            destination: '/forgot-screen',
            buttonText: 'Restablecer Contraseña',
          ),
        ],
      ),
    );
  }
}
