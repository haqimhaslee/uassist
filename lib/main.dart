import 'package:flutter/material.dart';
import 'package:uassist_v3/main_page.dart';
import 'package:uassist_v3/src/utp_ui.dart';
import 'package:dynamic_color/dynamic_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(builder: (lightDynamic, darkDynamic) {
      return MaterialApp(
          theme: ThemeData(
            colorScheme: lightDynamic ?? lightColorScheme,
            useMaterial3: true,
            fontFamily: 'GoogleSans',
          ),
          darkTheme: ThemeData(
            colorScheme: darkDynamic ?? darkColorScheme,
            useMaterial3: true,
            fontFamily: 'GoogleSans',
          ),
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          home: const MainPage());
    });
  }
}
