class UserModel {
  final String? id;
  final String email;
  final String phoneNo;
  final String password;
  final String fullName;

  const UserModel(
      {this.id,
      required this.email,
      required this.password,
      required this.fullName,
      required this.phoneNo});

  toJson() {
    return {
      "FullName": fullName,
      "Email": email,
      "Phone": phoneNo,
      "Password": password,
    };
  }
}
