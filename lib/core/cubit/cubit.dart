import 'package:bookly/core/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooklyCubit extends Cubit<BooklyStates> {
  BooklyCubit() : super(BooklyInitState());

  static BooklyCubit get(context) => BlocProvider.of(context);

  void navigateTo(context, screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

 waitTwoSeconds(context, screen){

   Future.delayed(const Duration(seconds: 2)).then((value) {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => screen), (route){
      return false;
    }

  );
});}


  void navigateAndDelPast(context, screen) {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => screen), (route){
          return false;
        }
    );
  }
}