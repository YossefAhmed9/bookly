import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/features/presentation/widgets/best_seller_item_listView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../core/utils/utils.dart';
import '../../../core/utils/styles.dart';
import '../widgets/book_item_listView.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(AssetClass().booklyLogo, scale: 3.5),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
              ),
              onPressed: () {
                GoRouter.of(context).push('/search');
              },
            ),
          )
        ],
        backgroundColor: mainColor,
      ),
      backgroundColor: mainColor,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            CustomScrollView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: BookItemListView(
                    height: MediaQuery.of(context).size.height * 0.20,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Best Sellers',
                      style: Styles.title1,
                    ),
                  ),
                ),
                 SliverToBoxAdapter(
                  child: BestSellerItemListView(height: MediaQuery.of(context).size.height * 0.623,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
