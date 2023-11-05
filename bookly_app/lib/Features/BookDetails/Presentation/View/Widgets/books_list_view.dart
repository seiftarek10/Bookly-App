import 'package:bookly_app/Features/Home/Presentation/View/Widgets/book_image.dart';
import 'package:flutter/material.dart';

class BooksDetailsListView extends StatelessWidget {
  const BooksDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 9),
              child: BookImage(
                height:MediaQuery.of(context).size.height * 0.15,
                image: 'https://elements.getpostman.com/redirect?entityId=14058212-d3c30656-4efa-4166-8405-86655985d94d&entityType=collection',
                ),
            );
          }),
    );
  }
}
