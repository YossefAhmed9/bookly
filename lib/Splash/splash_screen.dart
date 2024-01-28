import 'package:bookly/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/states.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BooklyCubit,BooklyStates>(
      listener: (BuildContext context, BooklyStates state) { },
      builder: (context,state){
       return  Scaffold(
         backgroundColor: Colors.black54,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child:Image.asset('assets/images/Logo.png'),
                ),
                const CircularProgressIndicator(color: Colors.white),
              ],
            ),
          ),
        );
      },
    );
  }
}
