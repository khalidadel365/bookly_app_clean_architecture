
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';


sealed class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}
final class FeaturedBooksLoading extends FeaturedBooksState {}
final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMessage;
  FeaturedBooksFailure(this.errorMessage);
}
final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookEntity> books;

  FeaturedBooksSuccess(this.books);
}
