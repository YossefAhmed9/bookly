import 'package:bookly/core/cubit/home_cubit/cubit.dart';
import 'package:bookly/data/models/book_model.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key,required this.bookItemIndex});
final int bookItemIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child:  Image(
          fit: BoxFit.fill,
          image: NetworkImage(BookModel.fromJson(json: BooklyCubit.get(context).allBooksResult,index: bookItemIndex).smallThumbnail)
        ),
      ),
    );
  }
}