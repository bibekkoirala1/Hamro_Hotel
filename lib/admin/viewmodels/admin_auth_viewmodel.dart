import 'package:flutter/material.dart';
import '../services/admin_auth_service.dart';

class AdminAuthViewModel extends ChangeNotifier {
  bool loading = false;

  Future<void> login(BuildContext context, String email, String pass) async {
    loading = true;
    notifyListeners();

    final success = await AdminAuthService.login(email, pass);

    loading = false;
    notifyListeners();

    if (success) {
      Navigator.pushNamed(context, "/admin/dashboard");
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Invalid Email or Password")),
      );
    }
  }
}
