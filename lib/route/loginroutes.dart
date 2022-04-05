import 'package:flutter/material.dart';
import 'package:garbagereportapp/models/menu.dart';
import 'package:garbagereportapp/pages/pageslogin.dart';

class AppLoginRoutes{
  static const String initialRoute = 'Login';

  static final menuLoginOptions = <ItemMenu>[
    
    ItemMenu(
    label: 'Inicio', 
    route: initialRoute, 
    icon: Icons.house, 
    screen: const Home()),

    ItemMenu(
        label: 'Registrarse', 
        route: 'Registro', 
        icon: Icons.person , 
        screen: const Registro())

    
  ];

}