import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title),
      ),
    );
  }
}
