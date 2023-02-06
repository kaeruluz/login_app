import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/features/authentication/controllers/login_controller.dart';
import 'package:login_app/src/features/authentication/screens/forgot%20password/forgot_password_email/forgot_password_mail_screen.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../models/login_model.dart';

class LoginForm extends StatelessWidget {
  LoginForm({
    Key? key,
  }) : super(key: key);

  String email = '';
  String password = '';
  bool login = false;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: formHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              validator: (value) {
                if (value!.isEmpty || !value.contains('@')) {
                  return 'Please enter your email address.';
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: "Email",
                  hintText: "Email",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.0, color: secondaryColor)),
                  labelStyle: TextStyle(color: secondaryColor)),
            ),
            const SizedBox(height: formHeight - 20),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty || value.length < 6) {
                  return 'Password length should of atleast 6 characters.';
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: "Password",
                hintText: "Password",
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.0, color: secondaryColor)),
                labelStyle: TextStyle(color: secondaryColor),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
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
                  child: const Text(forgotPasswordTitle)),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  login = true;
                  final info = LoginModel(
                      email: controller.email.text,
                      password: controller.password.text);
                  LoginController.instance.signInUser(info);
                },
                child: Text(
                  "LOGIN",
                  style: Theme.of(context).textTheme.titleLarge,
                  selectionColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
