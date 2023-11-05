import 'package:bookly_app/Core/utils/routers.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/BookDetails/Presentation/View_Model/Get_Similer_Books_Cubit/get_similer_books_cubit.dart';
import 'package:bookly_app/Features/BookDetails/Presentation/View_Model/Get_Similer_Books_Cubit/get_similer_books_states.dart';
import 'package:bookly_app/Features/Home/Presentation/View/Widgets/book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BooksDetailsListView extends StatelessWidget {
  const BooksDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: BlocBuilder<SimilerBooksCubit, SimilersBooksStates>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.white,
            ));
          }
          if (state is FailuarGetBooks) {
            return Center(
                child: Text(
              state.errMessage,
              style: Stayles.textstyle20,
            ));
          }
          if (state is SuccessfulyGetBooks) {
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRoutes.kBoodDetailsRoute,
                        extra: state.books[index]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: BookImage(
                        height: MediaQuery.of(context).size.height * 0.15,
                        image: state.books[index].bookImage,
                      ),
                    ),
                  );
                });
          } else {
            return const Center(child: Text("555555555555"));
          }
        },
      ),
    );
  }
}
