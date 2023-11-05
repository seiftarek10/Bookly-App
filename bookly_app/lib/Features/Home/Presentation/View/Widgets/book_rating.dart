import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.rating, required this.ratingCount});

  final String rating, ratingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star_rounded, color: Colors.yellow, size: 20),
        Text(
          rating,
          style: Stayles.textstyle18,
        ),
        Text(
           " ($ratingCount)",
          style: Stayles.textstyle14,
        )
      ],
    );
  }
}
