import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilities/assets.dart';

class CustomBookImage extends StatelessWidget {
   CustomBookImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6/4,
        child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: image,
            errorWidget: (context, url, error) => Icon(Icons.error,size: 40,),
        )
      ),
    );
  }
}
