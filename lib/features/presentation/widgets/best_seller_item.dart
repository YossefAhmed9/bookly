import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: (){
      GoRouter.of(context).push('/bookDetails');
    },
      child: Container(
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
                image: AssetImage('assets/images/content.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: const Text(
                      'Harry Potter and some other words',
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.bookTitle,
                    ),
                  ),
                  const Text('Author name', style: Styles.authorName),
                  Row(
                    children: [
                      const Text('19.99\$', style: Styles.price),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.17,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(
                          FontAwesomeIcons.solidStar,
                          color: Colors.amberAccent,
                        ),
                      ),
                      const Text('4.8'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('(2389)'),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
