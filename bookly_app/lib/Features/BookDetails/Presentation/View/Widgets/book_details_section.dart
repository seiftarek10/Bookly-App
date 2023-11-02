import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/BookDetails/Presentation/View/Widgets/custom_button.dart';
import 'package:bookly_app/Features/Home/Presentation/View/Widgets/book_image.dart';
import 'package:bookly_app/Features/Home/Presentation/View/Widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookImage(height: MediaQuery.of(context).size.height * 0.31),
          const SizedBox(height: 30),
          const Text(
            "The Jungle Book",
            style: Stayles.textstyle30,
          ),
          const SizedBox(height: 10),
          Text(
            "Rudyard Kipling",
            style: Stayles.textstyle20.copyWith(fontWeight: FontWeight.w300,fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 10),
           const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BookRating(),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                text: r"19.99$",
                style: Stayles.textstyle20
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const CustomButton(
                color: Color(0xffF98F64),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                text: "Free Preview",
                style: Stayles.textstyle20,
              ),
            ],
          ),
      ],
    );
  }
}