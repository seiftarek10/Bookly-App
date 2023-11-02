import 'package:bookly_app/Core/utils/routers.dart';
import 'package:bookly_app/Features/Home/Presentation/View/Widgets/book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BooksHomeListView extends StatelessWidget {
  const BooksHomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 12),
              child: GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRoutes.kBoodDetailsRoute);
                },
                child: BookImage(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
              ),
            );
          }),
    );
  }
}
