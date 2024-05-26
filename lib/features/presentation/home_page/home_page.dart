import 'package:bookly/core/cubit/home_cubit/cubit.dart';
import 'package:bookly/core/cubit/home_cubit/states.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/features/presentation/widgets/best_seller_item_listView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../core/utils/utils.dart';
import '../../../core/utils/styles.dart';
import '../../../data/models/book_model.dart';
import '../widgets/book_item_listView.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BooklyCubit, BooklyStates>(
      listener: (context, state) {},
      builder: (context, state) {
        BooklyCubit cubit = BooklyCubit.get(context);
        // BookModel bookModel=BookModel.fromJson(json: cubit.allBooksItems,index: 2);

        return Scaffold(
          appBar: AppBar(
            title: Image.asset(AssetClass().booklyLogo, scale: 3.5),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 20,
                  ),
                  onPressed: () {
                    GoRouter.of(context).push('/search');
                  },
                ),
              )
            ],
            backgroundColor: mainColor,
          ),
          backgroundColor: mainColor,
          body: cubit.allBooksResult == null
              ? const Center(child: CircularProgressIndicator())
              : Padding(
                padding: const EdgeInsets.all(12.0),
                child: CustomScrollView(
                    scrollDirection: Axis.vertical,
                    // physics: const BouncingScrollPhysics(),
                    slivers: [
                      SliverToBoxAdapter(
                        child: BookItemListView(
                          height: MediaQuery.of(context).size.height * 0.20,
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: BestSellerItemListView(
                          height: MediaQuery.of(context).size.height * 0.623,
                        ),
                      ),
                    ],
                  ),
              ),
        );
      },
    );
  }
}
