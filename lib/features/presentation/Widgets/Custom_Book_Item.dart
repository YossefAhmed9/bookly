import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: const Image(
          image: NetworkImage(
            'http://books.google.com/books/content?id=2KtcugEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api',
          ),
        ),
      ),
    );
  }
}