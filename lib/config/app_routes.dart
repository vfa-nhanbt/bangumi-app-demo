import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/main/main_page.dart';

class AppRoutes {
  AppRoutes._internal();

  static final AppRoutes instance = AppRoutes._internal();

  // Declare app routes
  final String main = "/main";

  String get initial => main;

  late final router = GoRouter(
    initialLocation: initial,
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: const Center(
        child: Text('404'),
      ),
    ),
    routes: [
      GoRoute(
        path: main,
        builder: (context, state) => const MainPage(),
      ),
    ],
  );
}
