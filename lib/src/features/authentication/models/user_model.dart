class UserModel {
  final String? id;
  final String userType;
  final String year;
  final String email;
  final String phoneNo;
  final String password;
  final String fullName;

  const UserModel(
      {this.id,
      required this.userType,
      required this.year,
      required this.email,
      required this.password,
      required this.fullName,
      required this.phoneNo});

  toJson() {
    return {
      "UserType": userType,
      "Year": year,
      "FullName": fullName,
      "Email": email,
      "Phone": phoneNo,
      "Password": password,
    };
  }
}
