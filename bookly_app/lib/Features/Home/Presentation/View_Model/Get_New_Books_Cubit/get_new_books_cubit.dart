import 'package:bookly_app/Features/Home/Presentation/View_Model/Get_New_Books_Cubit/get_new_books_states.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewBooksCubit extends Cubit<NewBooksStates> {
  NewBooksCubit(this.homeRepo) : super(InitialState());
  HomeRepo homeRepo;
  Future<void> getNewBooks() async {
    var result = await homeRepo.getNewstBooks();
    result.fold(
        (failuar) => {emit(FailuarGetNewBooks(errMessage: failuar.errMasages))},
        (newBooks) => {emit(SuccessfulyGetNewBooks(newBooks: newBooks))});
  }
}
