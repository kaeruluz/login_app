import 'package:flutter/material.dart';
import 'package:login_app/src/constants/sizes.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/text_strings.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: formHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  labelText: "Full Name",
                  prefixIcon: Icon(
                    Icons.person_outline_outlined,
                    color: secondaryColor,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2.0, color: secondaryColor)),
                  labelStyle: TextStyle(color: secondaryColor)),
            ),
            const SizedBox(height: defaultSize - 20),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: "E-Mail",
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: secondaryColor,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2.0, color: secondaryColor)),
                  labelStyle: TextStyle(color: secondaryColor)),
            ),
            const SizedBox(height: defaultSize - 20),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: "Phone No.",
                  prefixIcon: Icon(
                    Icons.numbers,
                    color: secondaryColor,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2.0, color: secondaryColor)),
                  labelStyle: TextStyle(color: secondaryColor)),
            ),
            const SizedBox(height: defaultSize - 20),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(
                    Icons.fingerprint,
                    color: secondaryColor,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2.0, color: secondaryColor)),
                  labelStyle: TextStyle(color: secondaryColor)),
            ),
            const SizedBox(height: defaultSize - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(signup.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
