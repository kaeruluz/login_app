import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/features/authentication/controllers/signup_controller.dart';
import 'package:login_app/src/features/authentication/screens/forgot%20password/forgot_password_email/forgot_password_mail_screen.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

import 'package:login_app/src/features/authentication/models/user_model.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: formHeight - 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: "Email",
                labelStyle: TextStyle(color: secondaryColor),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.0, color: secondaryColor))),
          ),
          const SizedBox(height: formHeight - 20),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.fingerprint),
              labelText: "Password",
              labelStyle: TextStyle(color: secondaryColor),
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: secondaryColor)),
              suffixIcon: Icon(Icons.remove_red_eye_sharp),
            ),
          ),
          const SizedBox(height: formHeight - 20),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
                Get.to(() => const ForgotPasswordMailScreen());
              },
              child: const Text(
                forgetPassword,
              ),
            ),
          ),
          const SizedBox(
            height: formHeight,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                foregroundColor: whiteColor,
                backgroundColor: secondaryColor,
                side: const BorderSide(color: secondaryColor),
                padding: const EdgeInsets.symmetric(vertical: buttonHeight),
              ),
              child: Text(login.toUpperCase()),
            ),
          )
        ],
      ),
    ));
  }
}
