import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../core/cubit/home_cubit/cubit.dart';
import '../../../core/cubit/home_cubit/states.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BooklyCubit, BooklyStates>(
      listener: (BuildContext context, BooklyStates state) {},
      builder: (context, state) {
        BooklyCubit cubit = BooklyCubit.get(context);
        Future.delayed(const Duration(seconds: 1)).then((value) {
          cubit.navigateAndDelPast(context);
        });
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
