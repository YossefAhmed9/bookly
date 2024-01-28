import 'package:bookly/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooklyCubit extends Cubit<BooklyStates> {
  BooklyCubit() : super(BooklyInitState());

  static BooklyCubit get(context) => BlocProvider.of(context);
}