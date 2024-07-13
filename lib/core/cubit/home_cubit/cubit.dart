import 'package:bookly/core/cubit/home_cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../network/remote/dio_helper.dart';
import '../../network/remote/api_constants.dart';

class BooklyCubit extends Cubit<BooklyStates> {
  BooklyCubit() : super(BooklyInitState());

  static BooklyCubit get(context) => BlocProvider.of(context);

  void navigateTo(context, screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

  void navigateAndDelPast(context) {
    GoRouter.of(context).pushReplacement('/');
  }

  late int bookIndex;
  List allBooksItems = [];
  List bookDetailsItems = [];
  var allBooksResult;

  FetchAllBooks() async {
    emit(BooklyGetDataLoadingState());
    await DioHelper.getData(
      url: APIconstants.fetchBooks,
      query: {"Filtering": "free-ebooks", "q": "flutter"},
    ).then((value) async {
      allBooksItems.addAll(value.data['items']);
      allBooksResult = value.data;
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
      bookDetails = value.data;
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
