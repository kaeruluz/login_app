import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:login_app/src/features/authentication/screens/signup/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(defaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: const AssetImage(welcomeScreenImg),
                height: height * 0.6,
              ),
              Column(
                children: [
                  Text(
                    welcomeTitle,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    welcomeSubTitle,
                    style: Theme.of(context).textTheme.titleSmall,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                        onPressed: () => Get.to(() => const LoginScreen()),
                        style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(),
                            foregroundColor: secondaryColor,
                            side: const BorderSide(color: secondaryColor),
                            padding: const EdgeInsets.symmetric(
                                vertical: buttonHeight)),
                        child: Text(login.toUpperCase())),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () => Get.to(() => const SignupScreen()),
                        style: OutlinedButton.styleFrom(
                            elevation: 0,
                            shape: const RoundedRectangleBorder(),
                            foregroundColor: whiteColor,
                            backgroundColor: secondaryColor,
                            side: const BorderSide(color: secondaryColor),
                            padding: const EdgeInsets.symmetric(
                                vertical: buttonHeight)),
                        child: Text(signup.toUpperCase())),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
