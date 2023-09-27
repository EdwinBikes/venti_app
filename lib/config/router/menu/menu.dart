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
      title: 'Crear perfil',
      subTitle: 'Login',
      link: '/createdates-screen',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: '10',
      subTitle: 'Login',
      link: '/login-screen',
      icon: Icons.color_lens_sharp),
  MenuItem(
      title: 'Cajeros totales',
      subTitle: 'Login',
      link: '/totalcashiers-screen',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Nuevo cajero',
      subTitle: 'Login',
      link: '/newcashier-screen',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Editar cajero',
      subTitle: 'Login',
      link: '/editcashier-screen',
      icon: Icons.alarm_on_sharp),
  MenuItem(
      title: 'Cajas totales',
      subTitle: 'Login',
      link: '/totalcashregister-screen',
      icon: Icons.check_box_outline_blank_outlined),
  MenuItem(
      title: 'Modificar caja',
      subTitle: 'Login',
      link: '/editcashregister-screen',
      icon: Icons.camera_alt_sharp),
  MenuItem(
      title: 'Nueva caja',
      subTitle: 'Login',
      link: '/newcashregister-screen',
      icon: Icons.car_rental),
  MenuItem(
      title: '9',
      subTitle: 'Login',
      link: '/login-screen',
      icon: Icons.vibration_sharp),
];
