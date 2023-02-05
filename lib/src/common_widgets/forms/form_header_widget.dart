import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_strings.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage(signupImg),
          height: size.height * 0.2,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
