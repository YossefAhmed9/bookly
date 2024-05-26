import 'package:flutter/material.dart';
import 'book_item.dart';

class BookItemListView extends StatelessWidget {
  const BookItemListView({super.key, required this.height});
final double height;
  @override
  Widget build(BuildContext context) {
    return  Column(
      //mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.infinity,
          height:height,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>  BookItem(bookItemIndex: index),
          ),
        ),
      ],
    );

  }
}
