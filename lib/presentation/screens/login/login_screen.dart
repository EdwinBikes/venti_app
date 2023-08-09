import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const name = 'login-screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                ),
                style: const ButtonStyle()),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
                child: Text(
              '¡Bienvenido!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            )),
          ),
          const SizedBox(height: 40),
          const CustomImputField(),
        ],
      ),
    ));
  }
}

class _CustomImputField extends StatelessWidget {
  const _CustomImputField();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'fist_name': 'cuaqluiera',
      'last_name': 'Herrera',
      'email': 'patico@gmail.com',
      'password': '12345',
      'role': 'admin'
    };
    return Form(
      key: myFormKey,
      child: Column(
        children: [
          CustomImputField(
              labelText: 'Nombre',
              hintText: 'Nombre del usuario',
              formProperty: 'first_name',
              formvalues: formValues),
          const SizedBox(height: 30),
          CustomImputField(
              labelText: 'Apellido',
              hintText: 'Apellido del usuario',
              formProperty: 'las_name',
              formvalues: formValues),
          const SizedBox(height: 30),
          CustomImputField(
              labelText: 'Correo',
              hintText: 'Correo del usuario',
              keyboardType: TextInputType.emailAddress,
              formProperty: 'email',
              formvalues: formValues),
          const SizedBox(height: 30),
          CustomImputField(
              labelText: 'Contraseña',
              hintText: 'Alfa numericos',
              obscureText: true,
              formProperty: 'password',
              formvalues: formValues),
          DropdownButtonFormField<String>(
              items: const [
                DropdownMenuItem(value: 'user', child: Text('user')),
                DropdownMenuItem(value: 'superuser', child: Text('superuser')),
                DropdownMenuItem(value: 'developer', child: Text('developer')),
                DropdownMenuItem(value: 'admin', child: Text('admin')),
              ],
              onChanged: (value) {
                formValues['role'] = value ?? 'Admin';
              }),
          ElevatedButton(
            child: const SizedBox(
                width: double.infinity, child: Center(child: Text('entrar'))),
            onPressed: () {
              FocusScope.of(context).requestFocus(FocusNode());
              if (!myFormKey.currentState!.validate()) {}
              return;
            },
          )
        ],
      ),
    );
  }
}
