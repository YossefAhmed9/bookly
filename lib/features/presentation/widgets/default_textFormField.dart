import 'package:flutter/material.dart';

class BookSearch extends StatelessWidget {
  const BookSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
      hintText: 'Search book name',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
    ));
  }
}
