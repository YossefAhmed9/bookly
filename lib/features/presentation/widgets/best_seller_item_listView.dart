import 'package:bookly/core/cubit/home_cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'Best_seller_item.dart';

class BestSellerItemListView extends StatelessWidget {
  const BestSellerItemListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
         itemCount: BooklyCubit.get(context).allBooksItems.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) =>  SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: BestSellerItem(bestSellerIndex: index,),
          ),
        ),
      ),
    );
  }
}
