import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/SplachScreen/Presentation/View/Widgets/logo.dart';
import 'package:flutter/material.dart';

class SplachViewBody extends StatelessWidget {
  const SplachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const Logo(height: 60),
         const SizedBox(height: 14),
          Text(
            "Free Books",
            style: Stayles.textstyle16.copyWith(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
