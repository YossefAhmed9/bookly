import 'package:flutter/material.dart';

import '../../../core/utils/styles.dart';

class FreePreviewButton extends StatelessWidget {
  const FreePreviewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        height: 55,
        decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10),
          child: Center(
            child: TextButton(onPressed: (){}, child: Text(
              'Free Preview',
              style: Styles.bookTitle.copyWith(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),
            )),
          ),
        ),
      ),
    );

  }
}
