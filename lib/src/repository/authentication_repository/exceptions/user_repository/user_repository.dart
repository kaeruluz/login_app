import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/models/login_model.dart';
import '../../../../features/authentication/models/user_model.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createUser(UserModel user) async {
    await _db
        .collection("Users")
        .add(user.toJson())
        .whenComplete(() => Get.snackbar(
            "Success", "You account has been created.",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.grey.shade700.withOpacity(0.1)))
        .catchError((error, stackTrace) {
      Get.snackbar(
        "Error",
        "Something went wrong. Try Again Please!",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent.withOpacity(0.1),
        colorText: Colors.red,
      );
      print(error.toString());
    });
  }

  signInUser(LoginModel info) async {
    await _db
        .collection("Info")
        .add(info.toJson())
        .whenComplete(() => Get.snackbar(
            "Success", "You account has been created.",
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.grey.shade700.withOpacity(0.1)))
        .catchError((error, stackTrace) {
      Get.snackbar(
        "Error",
        "Something went wrong. Try Again Please!",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.redAccent.withOpacity(0.1),
        colorText: Colors.red,
      );
      print(error.toString());
    });
  }
}
