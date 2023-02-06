import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/features/authentication/controllers/login_controller.dart';
import 'package:login_app/src/features/authentication/screens/forgot%20password/forgot_password_email/forgot_password_mail_screen.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../models/login_model.dart';

class LoginForm extends StatefulWidget {
  LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String email = '';
  String password = '';

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: formKey,
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
              controller: controller.email,
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
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty || value.length < 6) {
                  return 'Password length should of atleast 6 characters.';
                } else {
                  return null;
                }
              },
              controller: controller.password,
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
                  if (formKey.currentState?.validate() ?? false) {
                    final info = LoginModel(
                        email: controller.email.text,
                        password: controller.password.text);
                    LoginController.instance.signInUser(info);
                  }
                },
                child: Text(login.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
