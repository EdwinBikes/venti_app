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
      title: 'Login',
      subTitle: 'Login',
      link: '/login-screen',
      icon: Icons.star_border),
  MenuItem(
      title: 'Nuevo cajero',
      subTitle: 'Login',
      link: '/newcashier-screen',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Cajeros creados',
      subTitle: 'Login',
      link: '/totalcashiers-screen',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Crear perfil',
      subTitle: 'Login',
      link: '/createdates-screen',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: '5',
      subTitle: 'Login',
      link: '/totalcashers-screen',
      icon: Icons.alarm_on_sharp),
  MenuItem(
      title: '6',
      subTitle: 'Login',
      link: '/login-screen',
      icon: Icons.check_box_outline_blank_outlined),
  MenuItem(
      title: '7',
      subTitle: 'Login',
      link: '/login-screen',
      icon: Icons.camera_alt_sharp),
  MenuItem(
      title: '8',
      subTitle: 'Login',
      link: '/login-screen',
      icon: Icons.car_rental),
  MenuItem(
      title: '9',
      subTitle: 'Login',
      link: '/login-screen',
      icon: Icons.vibration_sharp),
  MenuItem(
      title: '10',
      subTitle: 'Login',
      link: '/login-screen',
      icon: Icons.color_lens_sharp),
];
