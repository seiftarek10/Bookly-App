import 'package:bookly_app/Core/utils/routers.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/Presentation/View/Widgets/book_image.dart';
import 'package:bookly_app/Features/Home/Presentation/View/Widgets/book_rating.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewBookItem extends StatelessWidget {
  const NewBookItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kBoodDetailsRoute);
      },
      child: Row(
        children: [
          BookImage(
            height: 110,
            image:bookModel.bookImage??"https://elements.getpostman.com/redirect?entityId=14058212-d3c30656-4efa-4166-8405-86655985d94d&entityType=collection",
          ),
          // SizedBox(width: 25),
          Expanded(
            child: Padding(
              padding:const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      bookModel.title??"",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Stayles.textstyle20,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                  bookModel.author??"",
                    style: Stayles.textstyle14,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        r"19.99 $",
                        style: Stayles.textstyle20,
                      ),
                      BookRating(
                        rating:bookModel.rating.toString(),
                        ratingCount: bookModel.ratingCount.toString(),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
