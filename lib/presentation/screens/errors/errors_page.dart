import 'package:flutter/material.dart';

class ErrorsPage extends StatefulWidget {
  const ErrorsPage({super.key});

  @override
  State<ErrorsPage> createState() => _ErrorsPageState();
}

class _ErrorsPageState extends State<ErrorsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.yellow,
    );
  }
}