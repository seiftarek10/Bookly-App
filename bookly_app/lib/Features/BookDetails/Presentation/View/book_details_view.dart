import 'package:bookly_app/Features/BookDetails/Presentation/View/Widgets/book_details_body.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BookDetailsBody(bookModel: book,),
      ),
    );
  }
}
