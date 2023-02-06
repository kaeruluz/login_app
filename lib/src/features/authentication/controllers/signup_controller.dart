import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/models/user_model.dart';
import 'package:login_app/src/features/authentication/screens/home/home_screen.dart';
import 'package:login_app/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:login_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:login_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:login_app/src/repository/authentication_repository/exceptions/user_repository/user_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  // controllers to get data from TExtFiels

  final fullName = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRepository());

  // call this function from design & it will do rest
  void registerUser(String email, String password) {
    String? error = AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String;

    if (error != null) {
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }

  void createUser(UserModel user) async {
    await userRepo.createUser(user);
    Get.to(() => const LoginScreen());
  }
}
