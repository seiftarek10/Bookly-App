import 'package:bookly_app/Features/SplachScreen/Presentation/View/splach_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith( 
        scaffoldBackgroundColor: const Color(0xff100E23)
      ),
      home: const Scaffold(
        body: SplachView(),
      ));
  }
}
