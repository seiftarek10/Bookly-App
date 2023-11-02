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
      padding:const EdgeInsets.only(left: 20,right: 20,top: 20),
      child:  CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers:  [
         const SliverToBoxAdapter(
            child:HomeViewAbbBar()),

         const SliverToBoxAdapter(
          child: SizedBox(height: 30)),
         const SliverToBoxAdapter(
          child:BooksListView(), 
         ),
         const SliverToBoxAdapter(
          child: SizedBox(height: 40)),
          SliverToBoxAdapter(
            child: Text(
              'Newset Books',
              style: Stayles.textstyle18.copyWith(fontWeight:FontWeight.bold),),
          ),
          const SliverToBoxAdapter(
          child: SizedBox(height: 20)),
          const SliverFillRemaining(
            child: NewBooksListView(),
          )
        ],

      ),
    );
  }
}