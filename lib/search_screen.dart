import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/presentation/widgets/best_seller_item_listView.dart';
import 'package:flutter/material.dart';
import 'features/presentation/widgets/default_textFormField.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          slivers: [
            const SliverToBoxAdapter(
              child: BookSearch(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  'Search Results',
                  style: Styles.title1.copyWith(fontSize: 20),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: BestSellerItemListView(),
            ),
          ],
        ),
      ),
    );
  }
}
