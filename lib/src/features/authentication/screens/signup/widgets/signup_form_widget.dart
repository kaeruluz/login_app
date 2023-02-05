import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/features/authentication/controllers/signup_controller.dart';
import 'package:login_app/src/features/authentication/models/user_model.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/text_strings.dart';

class SignupFormWidget extends StatefulWidget {
  const SignupFormWidget({
    super.key,
  });

  @override
  State<SignupFormWidget> createState() => _SignupFormWidgetState();
}

class _SignupFormWidgetState extends State<SignupFormWidget> {
  _MyFormState() {
    _selectedVal = _userTypeList[0];
  }

  final _userTypeList = ["Student", "Faculty", "Alumni"];
  String? _selectedVal = "Student";

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: formHeight - 10),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField(
              value: _selectedVal,
              items: _userTypeList
                  .map((e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  _selectedVal = val as String;
                });
              },
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.black87,
              ),
              dropdownColor: Colors.white,
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.verified_user_outlined,
                    color: Colors.black,
                  ),
                  border: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.0, color: secondaryColor)),
                  labelText: "User Type",
                  labelStyle: Theme.of(context).textTheme.titleSmall),
            ),
            const SizedBox(height: defaultSize - 20),
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                  labelText: "Full Name",
                  prefixIcon: Icon(
                    Icons.person_outline_outlined,
                    color: secondaryColor,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.0, color: secondaryColor)),
                  labelStyle: TextStyle(color: secondaryColor)),
            ),
            const SizedBox(height: defaultSize - 20),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                  labelText: "E-Mail",
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: secondaryColor,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.0, color: secondaryColor)),
                  labelStyle: TextStyle(color: secondaryColor)),
            ),
            const SizedBox(height: defaultSize - 20),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                  labelText: "Phone No.",
                  prefixIcon: Icon(
                    Icons.numbers,
                    color: secondaryColor,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.0, color: secondaryColor)),
                  labelStyle: TextStyle(color: secondaryColor)),
            ),
            const SizedBox(height: defaultSize - 20),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(
                    Icons.fingerprint,
                    color: secondaryColor,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.0, color: secondaryColor)),
                  labelStyle: TextStyle(color: secondaryColor)),
            ),
            const SizedBox(height: defaultSize),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  final user = UserModel(
                    email: controller.email.text.trim(),
                    password: controller.password.text.trim(),
                    fullName: controller.fullName.text.trim(),
                    phoneNo: controller.phoneNo.text.trim(),
                  );
                  SignUpController.instance.createUser(user);
                },
                child: Text(signup.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
