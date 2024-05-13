import 'package:bookly/core/cubit/home_cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BooklyCubit extends Cubit<BooklyStates> {
  BooklyCubit() : super(BooklyInitState());

  static BooklyCubit get(context) => BlocProvider.of(context);

  void navigateTo(context, screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

  //waitTwoSeconds(context, screen){

    // Future.delayed(const Duration(seconds: 2)).then((value) {
    //   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => screen),
    //           (route){
    //     return false;
    //   }
    //
    //   );
    // });}


  void navigateAndDelPast(context) {
    GoRouter.of(context).pushReplacement('/');
  }
}