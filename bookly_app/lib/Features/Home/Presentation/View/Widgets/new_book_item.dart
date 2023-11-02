import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/Presentation/View/Widgets/book_image.dart';
import 'package:bookly_app/Features/Home/Presentation/View/Widgets/book_rating.dart';
import 'package:flutter/material.dart';

class NewBookItem extends StatelessWidget {
  const NewBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        BookImage(height: 100),
        // SizedBox(width: 25),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200,
                  child: Text(
                    "Harry Potter and Goblet of Fire",
                     maxLines: 2,
                     overflow: TextOverflow.ellipsis,
                     style: Stayles.textstyle20,),
                ),
                SizedBox(height: 5),
                Text("J.K Rowling",style: Stayles.textstyle14,),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text( r"19.99 $",style: Stayles.textstyle20,),
                  BookRating()
                ],)
              ],
            ),
          ),
        )
      ],
    );
  }
}