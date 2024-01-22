import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final String? title;
  final Widget? appbar;
  final Widget body;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final bool? resizeToAvoidBottomInset;
  final Color? backgroundColor;

  const CustomScaffold({
    super.key,
    this.title,
    this.appbar,
    this.bottomNavigationBar,
    this.floatingActionButton,
    required this.body,
    this.resizeToAvoidBottomInset = false,
    this.backgroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      backgroundColor: backgroundColor,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (appbar != null) appbar!,
          Expanded(
            child: body,
          ),
        ],
      ),
    );
  }
}
