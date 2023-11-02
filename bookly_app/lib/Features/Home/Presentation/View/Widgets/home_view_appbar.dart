import 'package:bookly_app/Features/SplachScreen/Presentation/View/Widgets/logo.dart';
import 'package:flutter/material.dart';

class HomeViewAbbBar extends StatelessWidget {
  const HomeViewAbbBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Logo(height: 20),
          IconButton(
            padding: EdgeInsets.zero,
          onPressed: (){},
          icon: const Icon(Icons.search,size: 33))
        ],
      );
  }
}