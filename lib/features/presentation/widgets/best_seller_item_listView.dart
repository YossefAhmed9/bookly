import 'package:bookly/core/cubit/home_cubit/cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/styles.dart';
import 'Best_seller_item.dart';

class BestSellerItemListView extends StatelessWidget {
  const BestSellerItemListView({super.key,required this.height});
final double height;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'Best Sellers',
            style: Styles.title1,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Expanded(
            child: ListView.builder(
               itemCount: BooklyCubit.get(context).allBooksItems.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>   SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: BestSellerItem(bestSellerIndex: index,),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
