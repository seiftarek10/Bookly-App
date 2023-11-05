import 'package:bookly_app/Core/utils/routers.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/Presentation/View/Widgets/book_image.dart';
import 'package:bookly_app/Features/Home/Presentation/View_Model/Get_Books_Cubit/get_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presentation/View_Model/Get_Books_Cubit/get_books_stats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BooksHomeListView extends StatelessWidget {
  const BooksHomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksCubit, BookStates>(
      builder: (context, state) {
        if (state is LoadingState) {
          return const Center(
              child: CircularProgressIndicator(color: Colors.white));
        }
        if (state is FailuarGetBooks) {
          return Center(
              child: Text(
            state.errMessage,
            style: Stayles.textstyle20,
          ));
        }
        if (state is SuccessfulyGetBooks) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(
                          AppRoutes.kBoodDetailsRoute,
                          extra: state.books[index]
                          );
                      },
                      child: BookImage(
                        height: MediaQuery.of(context).size.height * 0.3,
                        image: state.books[index].bookImage??"https://elements.getpostman.com/redirect?entityId=14058212-d3c30656-4efa-4166-8405-86655985d94d&entityType=collection",
                      ),
                    ),
                  );
                }),
          );
        } else {
          return const Center(child: Text("Err", style: Stayles.textstyle30));
        }
      },
    );
  }
}
