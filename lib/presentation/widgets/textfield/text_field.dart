import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  // final ValueChanged<String> onChanged;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.keyboardType,
    // required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(10.0),
        ),
        filled: true,
        fillColor: const Color.fromARGB(57, 178, 213, 219),
      ),
      onChanged: (value) {
        // Función que se ejecuta cuando cambia el valor del campo
        // Puedes usar 'value' para obtener el valor actual del campo
      },
    );
  }
}
