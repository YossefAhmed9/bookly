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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BookSearch(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    'Search Results',
                    style: Styles.title1.copyWith(fontSize: 20),
                  ),
                ),
                BestSellerItemListView(height: MediaQuery.of(context).size.height * 0.725,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
