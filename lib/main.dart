import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:uassist/page_router.dart';
import 'package:uassist/src/utp_ui.dart';

void main() async {
  Gemini.init(apiKey: 'AIzaSyCVuAXlWbZuPj73dmddUPCRN-hPomjKmYU');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Test Kit',
      theme: ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
        useMaterial3: true,
      ),
      home: const PageRouter(),
      debugShowCheckedModeBanner: false,
    );
  }
}
