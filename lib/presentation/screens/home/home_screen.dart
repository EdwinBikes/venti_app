import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venti_app/presentation/screens.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  final String homeScreen;

  const HomeScreen({super.key, required this.homeScreen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          child: Column(
            children: [
              FadeIn(
                child: const Stack(children: [
                  Image(
                    image: AssetImage('assets/images/login.png'),
                  ),
                  // Positioned(
                  //   width: 80,
                  //   top: 70,
                  //   child: IconButton(
                  //     onPressed: () {
                  //       Navigator.pop(context);
                  //     },
                  //     icon: Icon(Icons.arrow_back_ios_new_rounded,
                  //         color: colors.primary),
                  //   ),
                  // ),
                  SizedBox()
                ]),
              ),
              SizedBox(
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'venti',
                        style: GoogleFonts.katibeh(
                          fontSize: 90,
                        ),
                      ),
                      FilledButton(
                        style: FilledButton.styleFrom(
                            backgroundColor: Colors.black),
                        child: const SizedBox(
                            width: 200, child: Center(child: Text('Login'))),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white),
                        child: const SizedBox(
                            width: 200,
                            child: Center(child: Text('Crear Cuenta'))),
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Necesitas ayuda?',
                        style: TextStyle(color: Colors.cyan[600]),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
