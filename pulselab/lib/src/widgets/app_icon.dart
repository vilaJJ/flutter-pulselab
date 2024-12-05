import 'package:flutter/material.dart';
import 'package:pulselab/src/constants/assets_constants.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage(AssetsConstants.appIcon),
      height: 96,
    );
  }
}
