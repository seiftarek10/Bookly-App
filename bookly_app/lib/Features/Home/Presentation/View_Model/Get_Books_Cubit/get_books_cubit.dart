
import 'package:bookly_app/Features/Home/Presentation/View_Model/Get_Books_Cubit/get_books_stats.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksCubit extends Cubit<BookStates> {
  BooksCubit(this.homeRepo) : super(InitialState());

  HomeRepo homeRepo;

  Future<void> getBooks() async {
    emit(LoadingState());
      var result = await homeRepo.getAllBooks();
      result.fold((failuar){
        emit(FailuarGetBooks(errMessage: failuar.errMasages));
      }, (books){
        emit(SuccessfulyGetBooks(books: books));
      });
  }
}
