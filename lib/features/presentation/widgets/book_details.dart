import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/styles.dart';
import 'book_rating.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(FontAwesomeIcons.xmark)),
        actions: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(FontAwesomeIcons.cartPlus)),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
              child: Container(
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
            ),
            Text(
              'Book Title',
              style: Styles.bookTitle
                  .copyWith(fontWeight: FontWeight.w200,fontSize: 30),
            ),
             Text(
              'Author name',
              style: Styles.authorName.copyWith(fontSize: 20,fontStyle: FontStyle.italic),
            ),
            const BookRating(),
          ],
        ),
      ),
    );
  }
}
