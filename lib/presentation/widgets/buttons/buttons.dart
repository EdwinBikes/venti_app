import 'package:flutter/material.dart';

class CustomButtonBlack extends StatelessWidget {
  final String routeName;

  const CustomButtonBlack({Key? key, required this.routeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(backgroundColor: Colors.black),
      child: const SizedBox(width: 200, child: Center(child: Text('Login'))),
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}
