import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
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
        const Text("OR"),
        const SizedBox(
          height: formHeight - 10,
        ),
        SizedBox(
          height: formHeight + 10,
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: const Image(
                image: AssetImage(googleLogo),
                width: 20,
              ),
              onPressed: () {},
              label: Text(
                signInWithGoogle,
                style: Theme.of(context).textTheme.titleSmall,
              )),
        ),
        const SizedBox(
          height: formHeight + 10,
        ),
        TextButton(
            onPressed: null,
            child: Text.rich(TextSpan(
                text: dontHaveAnAccount,
                style: Theme.of(context).textTheme.titleSmall,
                children: const [
                  TextSpan(text: signup, style: TextStyle(color: Colors.blue))
                ])))
      ],
    );
  }
}
