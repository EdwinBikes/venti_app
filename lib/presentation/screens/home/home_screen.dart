import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:venti_app/export_links.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: Column(
          children: [
            FadeIn(
              child: const Stack(
                children: [
                  Image(
                    image: AssetImage('assets/images/login.png'),
                  ),
                  SizedBox(),
                ],
              ),
            ),
            SizedBox(
              child: Center(
                child: Column(
                  children: [
                    const Text('venti',
                        style: TextStyle(
                          // GoogleFonts.katibeh(
                          fontSize: 62,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomButtonBlack(
                      destination: '/login-screen',
                      buttonText: 'Iniciar sesión',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomButtonWhite(
                      destination: '/register-screen',
                      buttonText: 'Registrate',
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Text(
                      'Necesitas ayuda?',
                      style: TextStyle(color: Colors.cyan[600]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
