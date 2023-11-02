import 'package:bookly_app/Core/utils/routers.dart';
import 'package:bookly_app/Features/SplachScreen/Presentation/View/Widgets/splach_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplachView extends StatefulWidget {
  const SplachView({super.key});

  @override
  State<SplachView> createState() => _SplachViewState();
}

class _SplachViewState extends State<SplachView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRoutes.kHomeRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SplachViewBody());
  }
}
