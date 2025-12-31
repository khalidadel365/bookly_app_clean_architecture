import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/book_entity.dart';
abstract class HomeRemoteDataSource{
  Future<List<BookEntity> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();

}
class HomeRemoteDataSourceImp extends HomeRemoteDataSource{
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() {

  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() {

  }

}