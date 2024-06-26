import 'package:bookly/core/cubit/home_cubit/cubit.dart';
import 'package:bookly/data/models/book_model.dart';
import 'package:bookly/features/presentation/widgets/book_item_listView.dart';
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
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
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
                    child: Image.network(
                      BookModel.fromJson(json: BooklyCubit.get(context).allBooksResult, index:BooklyCubit.get(context).bookIndex).normalThumbnail,
                      fit: BoxFit.fill,
                    ),
                  ),
                  //Book title
                  Text(
                    BookModel.fromJson(json: BooklyCubit.get(context).allBooksResult, index: BooklyCubit.get(context).bookIndex).title,
                    style: Styles.bookTitle
                        .copyWith(fontWeight: FontWeight.w200, fontSize: 30),
                    maxLines: 2,
                  ),
                  //Author name
                  Text(
                    '${BookModel.fromJson(json: BooklyCubit.get(context).allBooksResult, index: BooklyCubit.get(context).bookIndex).authors[0]}',
                    style: Styles.authorName
                        .copyWith(fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                  const BookRating(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    child: Row(
                      children: [
                        //price button
                        BookPriceButton(),
                        //free preview button
                        FreePreviewButton(),
                      ],
                    ),
                  ),
                  //You may also like
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'You may also like',
                            style: Styles.bookTitle
                                .copyWith(fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: BookItemListView(
                              height: MediaQuery.of(context).size.height * 0.17,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
