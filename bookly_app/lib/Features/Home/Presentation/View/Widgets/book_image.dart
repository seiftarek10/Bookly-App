import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({super.key, required this.height, required this.image});

  final double height;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              image: DecorationImage(
                  fit: BoxFit.fill, image: NetworkImage(image??"https://elements.getpostman.com/redirect?entityId=14058212-d3c30656-4efa-4166-8405-86655985d94d&entityType=collection"))),
        ),
      ),
    );
  }
}
