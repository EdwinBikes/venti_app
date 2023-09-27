import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool suffixIcon;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.keyboardType,
    this.obscureText = false,
    this.suffixIcon = false,
  }) : super(key: key);

  @override
  CustomTextFieldState createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        suffixIcon: widget.suffixIcon
            ? IconButton(
                icon: Icon(widget.obscureText
                    ? Icons.visibility
                    : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    !widget.obscureText;
                  });
                },
              )
            : null,
        labelText: widget.labelText,
        hintText: widget.hintText,
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

class PasswordEditingController extends TextEditingController {
  bool _obscureText = true;

  bool get obscureText => _obscureText;

  void togglePasswordVisibility() {
    _obscureText = !_obscureText;
    notifyListeners();
  }
}
