import 'package:flutter/material.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    super.key,
    required this.title,
    required this.body,
    this.backgroundColor = const Color(0xFFF7F8FC),
    this.centerTitle = true,
    this.actions,
  });

  final String title;
  final Widget body;
  final Color backgroundColor;
  final bool centerTitle;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: centerTitle,
        actions: actions,
      ),
      body: body,
    );
  }
}
