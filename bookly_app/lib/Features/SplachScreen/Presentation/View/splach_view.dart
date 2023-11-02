import 'package:bookly_app/Core/utils/Styles.dart';
import 'package:bookly_app/Features/SplachScreen/Presentation/View/Widgets/logo.dart';
import 'package:flutter/material.dart';

class SplachView extends StatefulWidget {
  const SplachView({super.key});

  @override
  State<SplachView> createState() => _SplachViewState();
}

class _SplachViewState extends State<SplachView> {
  @override
  void initState() {
    super.initState();

    // Future.delayed(const Duration(seconds: 2),(){
    //   Navigator.push(context, route)
    // })
  }
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Logo(height: 60),
          SizedBox(height: 14),
          Text("Free Books",style: Stayles.textstyle16,)
        ],
      ),
    );
  }
}

