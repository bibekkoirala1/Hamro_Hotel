import 'package:flutter/material.dart';7

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await HiveService().init();

  await initDependencies();
  runApp(const MyApp());
}
