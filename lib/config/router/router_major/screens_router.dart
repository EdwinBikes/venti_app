import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Landing Screen',
      subTitle: 'landing-screen',
      link: '/landing-screen',
      icon: Icons.star_border),
  MenuItem(
      title: 'Login Screen',
      subTitle: 'login login',
      link: '/login-screen',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Home Screen',
      subTitle: 'home screen',
      link: '/home-screen',
      icon: Icons.credit_card),
];
