import 'package:bookly_app/Features/BookDetails/Presentation/View_Model/Get_Similer_Books_Cubit/get_similer_books_states.dart';
import 'package:bookly_app/Features/BookDetails/data/repos/similer_books_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilerBooksCubit extends Cubit<SimilersBooksStates> {
  SimilerBooksCubit(this.similerBooksRepo) : super(InitialState());

  SimilerBooksRepo similerBooksRepo;
  Future<void> getSimilerBooks() async {
    emit(LoadingState());
    var result = await similerBooksRepo.getSimilerBooks();
    result.fold((failuar) {
      emit(FailuarGetBooks(errMessage: failuar.errMasages));
    }, (similerBooks) {
      emit(SuccessfulyGetBooks(books: similerBooks));
    });
  }
}
