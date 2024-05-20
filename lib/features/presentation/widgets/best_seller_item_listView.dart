import 'package:flutter/material.dart';

import 'Best_seller_item.dart';

class BestSellerItemListView extends StatelessWidget {
  const BestSellerItemListView({super.key,required this.height});
final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
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
