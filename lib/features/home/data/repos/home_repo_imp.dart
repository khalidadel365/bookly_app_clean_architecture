import 'package:bookly_app/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/errors/failures.dart';
import '../data_sources/home_remote_data_source.dart';

class HomeRepoImp extends HomeRepo{
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;
  HomeRepoImp({required this.homeRemoteDataSource, required this.homeLocalDataSource});
  @override
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      var booksListCached = homeLocalDataSource.fetchFeaturedBooks();
      if (booksListCached.isNotEmpty) {
        return right(booksListCached);
      }

      var books = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(books);
    } catch (e) {
      print("Error in HomeRepoImp: ${e.toString()}");

      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async{
    try {
      //bshof fe 7aga f elcache wla la
      var booksListCached = homeLocalDataSource.fetchNewestBooks();
      if(booksListCached .isNotEmpty){
        return right(booksListCached);
      }
      var books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    }  catch (e) {
      if(e is DioException){
      return left(ServerFailure.fromDioException(e));
    }
      return left(ServerFailure(e.toString()));

      }
  }
}
