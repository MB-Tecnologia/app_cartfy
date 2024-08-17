import 'package:app_cartfy/src/app.dart';
import 'package:flutter/material.dart';

import 'InjectionContainer.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InjectionContainer.registerDependencies();
  runApp(const App());
}



