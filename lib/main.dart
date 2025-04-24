import 'package:app_cartfy/src/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'InjectionContainer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InjectionContainer.registerDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cartfy: Gerenciador de listas de compras",
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(),
      home: const Home(), 
    );
  }
}
