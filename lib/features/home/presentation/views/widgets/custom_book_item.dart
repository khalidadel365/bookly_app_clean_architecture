import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilities/assets.dart';

class CustomBookImage extends StatelessWidget {
   CustomBookImage({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6/4,
        child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
            errorWidget: (context, url, error) => Icon(Icons.error,size: 40,),
        )
      ),
    );
  }
}
