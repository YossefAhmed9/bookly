import 'package:bookly/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../core/network/remote/api_constants.dart';
import '../../core/network/remote/dio_helper.dart';
import '../../core/errors/failure.dart';
import '../models/book_model.dart';

 class HomeRepoImpl implements HomeRepo{
  Future<Either<Failure, List>> fetchAllBooks() async {
    List allBooksItems = [];

    try{
     await DioHelper.getData(
       url: APIconstants.fetchBooks,
       query: {"Filtering": "free-ebooks", "q": "flutter"},
     ).then((value) async {

       allBooksItems.addAll(value.data['items']);
       var allBooksResult = value.data;
       //print(allBooksItems);
       //return await value.data;
     }).catchError((error) {
       print('Error: $error');
       print(error.toString());
       print(error.runtimeType);
       return error;

     });
     return right(allBooksItems) ;

   }
   catch (error){
     return left(ServerFailure.fromDioException(error.toString() as DioException));

   }

  }

  @override
  Future<Either<Failure, List>> fetchBookDetails() {
    // TODO: implement fetchBookDetails
    throw UnimplementedError();
  }



}