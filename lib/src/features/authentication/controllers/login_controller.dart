import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:login_app/src/features/authentication/screens/home/home_screen.dart';
import 'package:login_app/src/repository/authentication_repository/exceptions/user_repository/user_repository.dart';

import '../../../repository/authentication_repository/authentication_repository.dart';
import '../models/login_model.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  /// TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();

  /// TextField Validation
  final userRepo = Get.put(UserRepository());

  //Call this Function from Design & it will do the rest
  Future<void> loginUser(String email, String password) async {
    String? error = await AuthenticationRepository.instance
        .loginWithEmailAndPassword(email, password) as String;

    if (error != null) {
      Get.showSnackbar(GetSnackBar(
        message: error.toString(),
      ));
    }
  }

  void signInUser(LoginModel info) async {
    await userRepo.signInUser(info);
    Get.to(() => ImageUpload());
  }
}
