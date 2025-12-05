class AdminAuthService {
  static Future<bool> login(String email, String password) async {
    // TODO: Replace with real API call
    await Future.delayed(const Duration(seconds: 1));

    if (email == "admin@hamrohotel.com" && password == "admin123") {
      return true;
    }
    return false;
  }
}
