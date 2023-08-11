import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:venti_app/export_links.dart';

class CreateDatesScreen extends StatelessWidget {
  static const name = 'createdates-screen';
  const CreateDatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                  'Crear comercio',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Text(
                  'Datos necesarios para gestionar tu comercio.',
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
                  labelText: 'Nombre del comercio',
                  hintText: AutofillHints.email,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                child: CustomTextField(
                  labelText: 'Tipo de identificacion del comercio',
                  hintText: AutofillHints.email,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                child: CustomTextField(
                  labelText: 'Razón social',
                  hintText: AutofillHints.email,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                child: CustomTextField(
                  labelText: 'Teléfono',
                  hintText: AutofillHints.email,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                child: CustomTextField(
                  labelText: 'Dirección',
                  hintText: AutofillHints.email,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                child: CustomTextField(
                  labelText: 'Nombre del representante legal',
                  hintText: AutofillHints.email,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                child: CustomTextField(
                  labelText: 'Tipo de identificacion del representante legal',
                  hintText: AutofillHints.email,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                child: CustomTextField(
                  labelText: 'N° de identificación de representante legal',
                  hintText: AutofillHints.email,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(height: 30),
              const CustomButtonBlack(
                destination: '/newpassword-screen',
                buttonText: 'Crear Comercio',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
