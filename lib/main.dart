import 'package:flutter/material.dart';
import 'package:my_app/admin/screen/dashboard_screen.dart';
import 'package:provider/provider.dart';

import 'auth/login_screen.dart';
import 'auth/signup_screen.dart';
import 'auth/home_screen.dart';
import 'auth/auth_viewmodel.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hamro Hotel Auth",
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        "/login": (_) => const LoginScreen(),
        "/signup": (_) => const SignupScreen(),
         "/home": (_) => const HomeScreen(),
        "/home": (_) => const AdminDashboardScreen(),
        "/booking": (_) => const AdminDashboardScreen(),
      },
    );
  }
}
