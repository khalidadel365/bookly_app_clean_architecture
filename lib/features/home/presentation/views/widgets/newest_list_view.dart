import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key, required this.books});
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => NewestListViewItem(book: books[index]),
        separatorBuilder: (context, index) => const SizedBox(height: 20,),
        itemCount: books.length);
  }
}
