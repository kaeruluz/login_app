import 'package:flutter/material.dart';
import '../../../../constants/sizes.dart';
import '../../models/model_on_boarding.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(defaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.4,
          ),
          Column(
            children: [
              Text(model.title, style: Theme.of(context).textTheme.titleLarge),
              Text(
                model.subTitle,
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(model.counterText,
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
