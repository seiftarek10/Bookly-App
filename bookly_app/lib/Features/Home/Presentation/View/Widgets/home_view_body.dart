import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/Presentation/View/Widgets/books_list_view.dart';
import 'package:bookly_app/Features/Home/Presentation/View/Widgets/home_view_appBar.dart';
import 'package:bookly_app/Features/Home/Presentation/View/Widgets/new_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.all(20),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeViewAbbBar(),
          const SizedBox(height: 30),
          const BooksListView(),
          const SizedBox(height: 40),
          Text('Newset Books',style: Stayles.textstyle18.copyWith(fontWeight:FontWeight.bold),),
          const SizedBox(height: 20),
          const NewBooksListView()
        ],
      ),
    );
  }
}