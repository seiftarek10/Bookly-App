import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.color, required this.borderRadius, required this.text, required this.style});

  final Color color;
  final BorderRadius borderRadius;
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){},
        child: Container(
          alignment: Alignment.center,
          height: 63,
          decoration: BoxDecoration(color: color, borderRadius: borderRadius),
          child: Text(
            text,
            style: style,
            ),
        ),
      ),
    );
  }
}
