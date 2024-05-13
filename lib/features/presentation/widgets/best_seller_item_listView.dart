import 'package:flutter/material.dart';

import 'Best_seller_item.dart';

class BestSellerItemListView extends StatelessWidget {
  const BestSellerItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.623,
      child: ListView.builder(
        // itemCount: 10,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => const SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: BestSellerItem(),
          ),
        ),
      ),
    );
  }
}
