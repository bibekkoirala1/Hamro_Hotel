class AuthService {
  /// Dummy login — replace with API call
  static Future<bool> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));

    return email == "admin@test.com" && password == "123456";
  }

  /// Dummy signup — replace with API call
  static Future<bool> signup(String name, String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    return true;
  }
}
