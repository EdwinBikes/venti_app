import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  final String homeScreen;

  const HomeScreen({super.key, required this.homeScreen});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
        body: SizedBox(
      child: Column(
        children: [
          FadeIn(
            child: Stack(
              children: [
                const Image(
                  image: AssetImage('assets/images/login.png'),
                ),
                Positioned(
                  width: 80,
                  top: 70,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios_new_rounded,
                        color: colors.primary),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Venti',
                    style: TextStyle(
                        fontSize: 60,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: colors.primary),
                  ),
                  FilledButton(
                    style:
                        FilledButton.styleFrom(backgroundColor: colors.primary),
                    child: const SizedBox(
                        width: 200, child: Center(child: Text('Login'))),
                    onPressed: () {},
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white),
                    child: const SizedBox(
                        width: 200, child: Center(child: Text('Crear Cuenta'))),
                    onPressed: () {},
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
