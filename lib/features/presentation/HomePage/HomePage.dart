import 'package:bookly/core/utils.dart';
import 'package:bookly/features/presentation/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../constants.dart';
import '../Widgets/Best_seller_item.dart';
import '../Widgets/Custom_Book_Item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset(AssetClass().booklyLogo, scale: 3.5),
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 15, right: 15),
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
              ),
            )
          ],
          backgroundColor: mainColor),
      backgroundColor: mainColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.20,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const BookItem(),
                ),
              ),
               Padding(
                padding:const EdgeInsets.symmetric(vertical: 8.0),
                child: Text('Best Sellers',style: Styles().title1,),
              ),
              SizedBox(
                width: double.infinity,
                  height: MediaQuery.of(context).size.height *0.63,
                  child: ListView.builder(itemBuilder: (context,index)=>const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: BestSellerItem(),
                  ))) ,
            ],
          ),
        ),
      ),
    );
  }
}



