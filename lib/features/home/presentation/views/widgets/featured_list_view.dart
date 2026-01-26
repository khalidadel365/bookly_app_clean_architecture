import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';import '../../../../../core/widgets/custom_loading_indicator.dart';


import '../../manager/featured_books_cubit/featured_books_state.dart';
import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key, required this.books});
  final List<BookEntity> books ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery
          .of(context)
          .size
          .height * .28,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => CustomBookImage(image: books[index].image ?? '',),
        itemCount: books.length,
        separatorBuilder: (context, index) =>
            SizedBox(
                width: 12),
      ),
    );
  }
}