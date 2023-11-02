import 'package:bookly_app/Features/Home/Presentation/View/Widgets/new_book_item.dart';
import 'package:flutter/material.dart';

class NewBooksListView extends StatelessWidget {
  const NewBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child:  NewBookItem());
          }),
    );
  }
}
