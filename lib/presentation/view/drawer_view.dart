import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:task/presentation/view/homeView/home_view.dart';

import 'menu/menu_view.dart';


class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {

  final zoomDrawerController = ZoomDrawerController();



  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    return ZoomDrawer(

      controller: zoomDrawerController,
        menuScreenTapClose: true,
        menuBackgroundColor: theme.colorScheme.primary,
      menuScreen: const MenuScreen(),
      mainScreen: const HomeView(),
      slideWidth: 230,
      mainScreenScale: .2,



      style: DrawerStyle.defaultStyle,
      angle: 0.0,
      isRtl: false,
    );
  }
}