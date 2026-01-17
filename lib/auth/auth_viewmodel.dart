import 'package:flutter/material.dart';
import 'package:my_app/auth/auth_service.dart';

class AuthViewModel extends ChangeNotifier {
  bool loading = false;

  void setLoading(bool value) {
    loading = value;
    notifyListeners();
  }

  Future<void> login(BuildContext context, String email, String pass) async {
    setLoading(true);
    final success = await AuthService.login(email, pass);
    setLoading(false);

    if (success) {
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Invalid credentials")));
    }
  }

  Future<void> signup(
    BuildContext context,
    String name,
    String email,
    String pass,
  ) async {
    setLoading(true);
    final success = await AuthService.signup(name, email, pass);
    setLoading(false);

    if (success) {
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Signup failed")));
    }
  }
}
