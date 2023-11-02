import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, required this.height});

  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      kLogo,
      height: height,
    );
  }
}
