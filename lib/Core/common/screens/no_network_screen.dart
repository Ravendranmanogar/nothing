import 'package:flutter/material.dart';
import 'package:nothing/Core/style/images/app_images.dart';


class NoNetworkScreen extends StatelessWidget {
  const NoNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.noNetwork),
          fit:BoxFit.fill),

        ),
      ),

    );
  }
}
