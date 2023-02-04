import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

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
              labelText: AutofillHints.email,
              hintText: AutofillHints.email,
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: formHeight - 20),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.fingerprint),
              labelText: AutofillHints.password,
              hintText: AutofillHints.password,
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.remove_red_eye_sharp),
            ),
          ),
          const SizedBox(height: formHeight - 20),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(forgetPassword),
            ),
          ),
          const SizedBox(
            height: formHeight + 10,
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
