import 'package:bookly/constants.dart';
import 'package:bookly/core/cubit/cubit.dart';
import 'package:bookly/core/utils.dart';
import 'package:bookly/features/presentation/HomePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/cubit/states.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BooklyCubit, BooklyStates>(
      listener: (BuildContext context, BooklyStates state) {},
      builder: (context, state) {
        BooklyCubit cubit = BooklyCubit.get(context);
        cubit.waitTwoSeconds(context, const HomePage());

        return Scaffold(
          backgroundColor: mainColor,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Image.asset(AssetClass().booklyLogo),
                ),
                const Center(
                    child: Text(
                  'Read free books',
                ))

                // const CircularProgressIndicator(
                //   color: Colors.white,
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}
