import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/styles.dart';
import 'book_price_button.dart';
import 'book_rating.dart';
import 'free_preview_book_button.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(FontAwesomeIcons.xmark)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(FontAwesomeIcons.cartPlus)),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              //Book Cover
              Container(
                width: MediaQuery.of(context).size.width * 0.63,
                height: MediaQuery.of(context).size.width * 1,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  'assets/images/content.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              //Book title
              Text(
                'Book Title',
                style: Styles.bookTitle
                    .copyWith(fontWeight: FontWeight.w200, fontSize: 30),
              ),
              //Author name
              Text(
                'Author name',
                style: Styles.authorName
                    .copyWith(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              const BookRating(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 35.0),
                child: Row(
                  children: [
                    //price button
                    BookPriceButton(),
                    //free preview button
                    FreePreviewButton(),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
