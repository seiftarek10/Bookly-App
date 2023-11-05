import 'package:bookly_app/Core/utils/routers.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/Presentation/View/Widgets/new_book_item.dart';
import 'package:bookly_app/Features/Home/Presentation/View_Model/Get_New_Books_Cubit/get_new_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presentation/View_Model/Get_New_Books_Cubit/get_new_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class NewBooksListView extends StatelessWidget {
  const NewBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewBooksCubit, NewBooksStates>(
      builder: (context, state) {
        if (state is LoadingState) {
          return const Center(
              child: CircularProgressIndicator(
            color: Colors.white,
          ));
        }
        if (state is FailuarGetNewBooks) {
          return Center(
              child: Text(
            state.errMessage,
            style: Stayles.textstyle22,
          ));
        }
        if (state is SuccessfulyGetNewBooks) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.newBooks.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRoutes.kBoodDetailsRoute,
                      extra: state.newBooks[index]
                      );
                  },
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: NewBookItem(
                        bookModel: state.newBooks[index],
                      )),
                );
              });
        } else {
          return const Center(
              child: Text(
            "Err",
            style: Stayles.textstyle22,
          ));
        }
      },
    );
  }
}
