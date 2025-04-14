
import 'package:flutter/material.dart';
import 'package:task/view/test.dart';

import 'configs/routes/routes.dart';
import 'configs/routes/routes_name.dart';
import 'configs/theme/app_theme_data.dart';

void main() {


  runApp(const MyApp()); // Running the application
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}); // Constructor for MyApp widget

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light, // Setting theme mode to dark
      theme: AppThemeData.lightThemeData, // Setting light theme
      darkTheme: AppThemeData.darkThemeData, // Setting dark theme      title: 'task',

      initialRoute: RoutesName.splash, // Initial route
      onGenerateRoute: Routes.generateRoute, // Generating routes
    );
  }
}


