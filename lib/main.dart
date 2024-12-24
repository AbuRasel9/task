import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/presentation/view/homeView/home_view.dart';
import 'package:task/presentation/view/drawer_view.dart';
import 'package:task/utils/theme/app_theme_data.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: AppThemeData.lightThemeData,
      home: DrawerScreen(),
    );
  }
}
