import 'dart:io';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:garbagereportapp/Providers/ReporteProviders.dart';
import 'package:garbagereportapp/pages/pages.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:garbagereportapp/pages/poi.dart';
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: GarbageReportapp()));
}

class GarbageReportapp extends StatefulWidget {
  const GarbageReportapp({Key? key}) : super(key: key);

  @override
  State<GarbageReportapp> createState() => _GarbageReportState();
}



class _GarbageReportState extends State<GarbageReportapp> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 2;

  final screens = [
    const PoiPage(),
    const Reporte(),
    const Home(),
    const LoginScreen(),
  ];

  @override
  Widget build(BuildContext context) {
  
    final items = <CustomBottomBarItems>[
      CustomBottomBarItems(
        label: 'Reportes',
        icon: Icons.report_outlined,
      ),
      CustomBottomBarItems(
          label: 'Reporte', icon: Icons.content_paste_search_outlined),
      CustomBottomBarItems(
        label: 'Home',
        icon: Icons.home,
      ),
      CustomBottomBarItems(
        label: 'Mi Perfil',
        icon: Icons.supervised_user_circle,
      ),
    ];

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 143, 11),
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: const IconThemeData(color: Colors.white)),
        child: CustomLineIndicatorBottomNavbar(
          selectedColor: Colors.white,
          unSelectedColor: Colors.black54,
          backgroundColor: Colors.white,
          currentIndex: index,
          customBottomBarItems: items,
          onTap: (index) => setState(() => this.index = index),
          enableLineIndicator: true,
          lineIndicatorWidth: 3,
          indicatorType: IndicatorType.Top,
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 245, 142, 8),
              Color.fromARGB(255, 220, 231, 57)
            ],
          ),
        ),
      ),
    );
  }
}
