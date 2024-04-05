import 'package:ecommerce_app/presentation/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Center(child: Column(
        children: [
          SearchBarWidget(),
        ],
      ))),
    );
  }
}
