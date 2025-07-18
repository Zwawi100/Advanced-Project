import 'package:advancedproject/presentation/resources/routes_manager.dart';
import 'package:advancedproject/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {

  const MyApp._internal();  // named constructor for singleton

  // Factory constructor to return the singleton instance
  static final MyApp _instance = MyApp._internal();   

  factory MyApp() => _instance;
  

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesGenerator.getRoute,
      initialRoute:Routes.splashRoute ,
      theme: getApplicationTheme(),
    );
  }
}
