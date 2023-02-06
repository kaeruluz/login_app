class LoginModel {
  final String? id;
  final String email;
  final String password;

  const LoginModel({
    this.id,
    required this.email,
    required this.password,
  });

  toJson() {
    return {
      "Email": email,
      "Password": password,
    };
  }
}
