import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../models/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchAllBooks();
  Future<Either<Failure, List<BookModel>>> fetchBookDetails();
}
