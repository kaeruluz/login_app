import 'package:flutter/material.dart';

import 'package:login_app/src/common_widgets/forms/form_header_widget.dart';

import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FormHeaderWidget(
                  title: signupTitle,
                  subtitle: signupSubTitle,
                ),
                const SignupFormWidget(),
                Column(
                  children: [
                    const Text("OR"),
                    const SizedBox(height: defaultSize - 10),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        icon: Image.asset(googleLogo, width: 20),
                        onPressed: () {},
                        label: Text(
                          signInWithGoogle,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        style: const ButtonStyle(
                          side: MaterialStatePropertyAll(BorderSide(width: 1)),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: alreadyHaveAccount,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            const TextSpan(
                                text: login,
                                style: TextStyle(color: Colors.blue)),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
