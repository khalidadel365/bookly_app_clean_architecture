import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_imp.dart';
import 'package:meta/meta.dart';

import '../../../domain/repos/home_repo.dart';
import '../../../domain/use_cases/fetch_featured_books_use_case.dart';
import 'featured_books_state.dart';


class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());

 final FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await featuredBooksUseCase.call();

    result.fold((
        failure){
      emit(FeaturedBooksFailure(failure.errorMessage));
    },
            (books){
      emit(FeaturedBooksSuccess(books));
            }
            );
  }
}
