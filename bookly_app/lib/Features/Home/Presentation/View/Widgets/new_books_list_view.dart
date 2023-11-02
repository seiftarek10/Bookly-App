import 'package:bookly_app/Core/utils/routers.dart';
import 'package:bookly_app/Features/Home/Presentation/View/Widgets/new_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewBooksListView extends StatelessWidget {
  const NewBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRoutes.kBoodDetailsRoute);
            },
            child: const Padding(
                padding: EdgeInsets.only(bottom: 20), child: NewBookItem()),
          );
        });
  }
}
