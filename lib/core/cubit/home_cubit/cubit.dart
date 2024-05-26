import 'package:bookly/core/cubit/home_cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../data/models/book_model.dart';
import '../../utils/api_constants.dart';
import '../../utils/dio_helper.dart';

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

  List allBooksItems=[];
  List bookDetailsItems=[];
  var allBooksResult;

  FetchAllBooks() async {
    emit(BooklyGetDataLoadingState());
    await DioHelper.getData(
      url: APIconstants.fetchBooks,
      query: {"Filtering": "free-ebooks", "q": "programming"},
    ).then((value) async {
      allBooksItems.addAll(value.data['items']);
      allBooksResult=value.data;
      //print(allBooksItems);
      emit(BooklyGetDataDoneState());
      //return await value.data;
    }).catchError((error) {
      print('Error: $error');
      print(error.toString());
      print(error.runtimeType);
      emit(BooklyGetDataErrorState(error));
    });
  }
var bookDetails;
   FetchBookDetails() {
    emit(BooklyGetDataLoadingState());
    DioHelper.getData(
        url: APIconstants.fetchBookDetails,
        query: {"q": "programming"}).then((value) async {
      // print(value.data);
      bookDetailsItems.addAll(value.data['items']);
      bookDetails=value.data;
      //print(bookDetailsItems.length);
      emit(BooklyGetDataDoneState());
    }).catchError((error) {
      print('Error: $error');
      print(error.toString());
      print(error.runtimeType);
      emit(BooklyGetDataErrorState(error));
    });
  }
}
