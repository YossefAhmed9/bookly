import 'package:flutter/material.dart';

import 'book_item.dart';

class BookItemListView extends StatelessWidget {
  const BookItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.20,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const BookItem(),
          ),
        ),
      ],
    );

  }
}
