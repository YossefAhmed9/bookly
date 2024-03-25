import 'package:bookly/features/presentation/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            width: 100,
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Image(
              image: NetworkImage(
                  'http://books.google.com/books/content?id=2KtcugEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    'Harry Potter and some other words',
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: Styles().bookTitle,
                  ),
                ),
                Text('Author name', style: Styles().authorName),
                Row(
                  children: [
                    Text('19.99\$', style: Styles().price),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.15,
                    ),
                    Text('⭐ 4.8 (2390)', style: Styles().rating)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
