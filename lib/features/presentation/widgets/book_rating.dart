import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(
            FontAwesomeIcons.solidStar,
            color: Colors.amberAccent,
          ),
        ),
        Text('4.8'),
        SizedBox(
          width: 10,
        ),
        Text('(2389)'),
      ],
    );
  }
}
