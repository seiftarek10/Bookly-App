import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/BookDetails/Presentation/View/Widgets/book_details_section.dart';
import 'package:bookly_app/Features/BookDetails/Presentation/View/Widgets/book_details_view_appbar.dart';
import 'package:bookly_app/Features/BookDetails/Presentation/View/Widgets/books_list_view.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const BookDetailsViewAppBar(),
          SizedBox(height: MediaQuery.of(context).size.height*0.01),
          BookDetailsSection(book: bookModel,),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "You can also like",
                style: Stayles.textstyle20,
              )),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          const BooksDetailsListView()
        ],
      ),
    );
  }
}
