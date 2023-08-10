import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:venti_app/export_links.dart';
import 'package:venti_app/presentation/widgets/text/text_bottom_screens.dart';

class RegisterScreen extends StatelessWidget {
  static const name = 'register-screen';
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
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
            const SizedBox(height: 35),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Hola! registrate para iniciar',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 12, horizontal: 18), // Ajusta los valores
              child: CustomTextField(
                labelText: 'Nombre de usuario',
                hintText: AutofillHints.email,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: CustomTextField(
                labelText: 'Correo Electronico',
                hintText: AutofillHints.password,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
              child: CustomTextField(
                labelText: 'Contraseña',
                hintText: AutofillHints.password,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: CustomTextField(
                labelText: 'Ingresa tu contraseña',
                hintText: AutofillHints.password,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(height: 30),
            const CustomButtonBlack(
              destination: '/home-screen',
              buttonText: 'Ingresar',
            ),
            const Spacer(),
            const TextBottomScreens(
              textPrimary: '¿Ya tienes una cuenta? ',
              textSecund: 'Login',
              textDestination: '/home-screen',
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
