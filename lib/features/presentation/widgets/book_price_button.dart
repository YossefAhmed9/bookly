import 'package:flutter/material.dart';

import '../../../core/utils/styles.dart';

class BookPriceButton extends StatelessWidget {
  const BookPriceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        height: 55,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: TextButton(onPressed: (){},child: Text(
              '19.99',
              style: Styles.bookTitle.copyWith(color: Colors.black),
            ),),
          ),
        ),
      ),
    );
  }
}
