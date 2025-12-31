import 'package:bookly_app/core/utilities/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/book_entity.dart';
abstract class HomeRemoteDataSource{
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();

}
class HomeRemoteDataSourceImp extends HomeRemoteDataSource{
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async{
    final ApiService apiService = ApiService();
    var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming');
    List<BookEntity> books = parseBooksList(data);
    return books;
  }

  List<BookEntity> parseBooksList(Map<String, dynamic> data) {
     List<BookEntity> books = [];
    for (var item in data['items']){
      books.add(BookModel.fromMap(item));
    }
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() {
      throw UnimplementedError();
  }

}