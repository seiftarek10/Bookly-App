import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.star_rounded, color: Colors.yellow, size: 20),
        Text(
          " 4.8",
          style: Stayles.textstyle18,
        ),
        Text(
          " (245)",
          style: Stayles.textstyle14,
        )
      ],
    );
  }
}
