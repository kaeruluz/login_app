import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/screens/signup/signup_screen.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: formHeight - 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.to(() => const SignupScreen()),
              child: Text.rich(
                TextSpan(
                  text: dontHaveAnAccount,
                  style: Theme.of(context).textTheme.titleSmall,
                  children: const [
                    TextSpan(text: signup, style: TextStyle(color: Colors.blue))
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
