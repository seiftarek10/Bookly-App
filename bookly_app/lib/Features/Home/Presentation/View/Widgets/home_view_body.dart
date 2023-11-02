import 'package:bookly_app/Features/Home/Presentation/View/Widgets/books_list_view.dart';
import 'package:bookly_app/Features/Home/Presentation/View/Widgets/home_view_appBar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(20),
      child:  Column(
        children: [
           HomeViewAbbBar(),
           SizedBox(height: 40),
           BooksListView()
        ],
      ),
    );
  }
}