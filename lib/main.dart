import 'package:flutter/material.dart';
import 'package:learn_flutter/home/home.dart';
import 'package:learn_flutter/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      themeMode: ThemeMode.system,
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
