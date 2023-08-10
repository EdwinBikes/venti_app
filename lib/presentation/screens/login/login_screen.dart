import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:venti_app/export_links.dart';
import 'package:venti_app/presentation/widgets/text/text_bottom_screens.dart';

class LoginScreen extends StatelessWidget {
  static const name = 'login-screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

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
                  )),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                  child: Text('¡Bienvenido!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenHeight * 0.05,
                      ))),
            ),
            SizedBox(height: screenHeight * 0.08),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.04, horizontal: 18),
                child: const CustomTextField(
                  labelText: 'Ingresa tu email',
                  hintText: AutofillHints.email,
                  keyboardType: TextInputType.emailAddress,
                )),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: CustomTextField(
                labelText: 'Ingresa tu contraseña',
                hintText: AutofillHints.password,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 18, vertical: screenHeight * 0.015),
                child: const Text(
                  'No recuerdas tu Contraseña?',
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            const CustomButtonBlack(
              destination: '/home-screen',
              buttonText: 'Ingresar',
            ),
            SizedBox(
              height: screenHeight * 0.22,
            ),
            const Spacer(),
            const TextBottomScreens(
              textPrimary: '¿No tienes una cuenta? ',
              textSecund: 'Registrate Ahora',
              textDestination: '/register-screen',
            ),
          ],
        ),
      ),
    );
  }
}

// class _FromWidget extends StatelessWidget {
//   const _FromWidget();

//   @override
//   Widget build(BuildContext context) {
//     final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
//     final Map<String, String> formValues = {
//       'fist_name': 'cuaqluiera',
//       'last_name': 'Herrera',
//       'email': 'patico@gmail.com',
//       'password': '12345',
//       'role': 'admin'
//     };
//     return Form(
//       key: myFormKey,
//       child: Column(
//         children: [
//           CustomImputField(
//               labelText: 'Nombre',
//               hintText: 'Nombre del usuario',
//               formProperty: 'first_name',
//               formvalues: formValues),
//           const SizedBox(height: 30),
//           CustomImputField(
//               labelText: 'Apellido',
//               hintText: 'Apellido del usuario',
//               formProperty: 'las_name',
//               formvalues: formValues),
//           const SizedBox(height: 30),
//           CustomImputField(
//               labelText: 'Correo',
//               hintText: 'Correo del usuario',
//               keyboardType: TextInputType.emailAddress,
//               formProperty: 'email',
//               formvalues: formValues),
//           const SizedBox(height: 30),
//           CustomImputField(
//               labelText: 'Contraseña',
//               hintText: 'Alfa numericos',
//               obscureText: true,
//               formProperty: 'password',
//               formvalues: formValues),
//           DropdownButtonFormField<String>(
//               items: const [
//                 DropdownMenuItem(value: 'user', child: Text('user')),
//                 DropdownMenuItem(value: 'superuser', child: Text('superuser')),
//                 DropdownMenuItem(value: 'developer', child: Text('developer')),
//                 DropdownMenuItem(value: 'admin', child: Text('admin')),
//               ],
//               onChanged: (value) {
//                 formValues['role'] = value ?? 'Admin';
//               }),
//           ElevatedButton(
//             child: const SizedBox(
//                 width: double.infinity, child: Center(child: Text('entrar'))),
//             onPressed: () {
//               FocusScope.of(context).requestFocus(FocusNode());
//               if (!myFormKey.currentState!.validate()) {}
//               return;
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
