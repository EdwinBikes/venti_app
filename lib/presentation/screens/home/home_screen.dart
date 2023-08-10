import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venti_app/export_links.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    // final double screenWidth = MediaQuery.of(context).size.width;

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
              height: screenHeight * 0.15,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'venti',
                      style: GoogleFonts.katibeh(
                        fontSize: screenHeight * 0.12,
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    const CustomButtonBlack(
                      destination: '/login-screen',
                      buttonText: 'Iniciar sesión',
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    const CustomButtonWhite(
                      destination: '/login-screen',
                      buttonText: 'Registrate',
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
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
