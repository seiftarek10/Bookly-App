import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/BookDetails/Presentation/View/Widgets/custom_button.dart';
import 'package:bookly_app/Features/Home/Presentation/View/Widgets/book_image.dart';
import 'package:bookly_app/Features/Home/Presentation/View/Widgets/book_rating.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookImage(
          height: MediaQuery.of(context).size.height * 0.31,
          image:book.bookImage,
        ),
        const SizedBox(height: 30),
         Text(
          book.title??"",
          style: Stayles.textstyle30.copyWith(fontSize: 26),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 10),
        Text(
          book.author??"",
          style: Stayles.textstyle20.copyWith(
              fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BookRating(
              rating: book.rating.toString(),
              ratingCount: book.ratingCount.toString(),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.03),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              text: r"19.99$",
              style: Stayles.textstyle22
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            const CustomButton(
              color: Color(0xffF98F64),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              text: "Free Preview",
              style: Stayles.textstyle22,
            ),
          ],
        ),
      ],
    );
  }
}
