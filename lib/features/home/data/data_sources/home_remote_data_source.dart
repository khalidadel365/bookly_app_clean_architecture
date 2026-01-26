import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utilities/api_service.dart';
import 'package:bookly_app/core/utilities/fuctions/save_books.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:hive/hive.dart';
import '../../domain/entities/book_entity.dart';
abstract class HomeRemoteDataSource{
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();

}
class HomeRemoteDataSourceImp extends HomeRemoteDataSource{
  HomeRemoteDataSourceImp(this.apiService);
  final ApiService apiService;
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async{
    var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming');
    List<BookEntity> books = parseBooksList(data);
    SaveBooksData(books,kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    final ApiService apiService = ApiService();
    var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming');
    List<BookEntity> books = parseBooksList(data);
    SaveBooksData(books, kNewestBox);
    return books;
  }

  List<BookEntity> parseBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var item in data['items']){
      books.add(BookModel.fromMap(item));
    }
    return books;
  }

}