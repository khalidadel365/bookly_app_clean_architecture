import 'package:flutter/material.dart';
import '../../../../../core/utilities/styles.dart';
import 'book_rating.dart';

import 'books_action.dart';
import 'custom_book_details_appbar.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        CustomBookDetailsAppBar(),
        Padding(
            padding: EdgeInsets.symmetric(
                vertical:8
                ,horizontal: width * 0.2),
           // child: CustomBookImage()
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'The Jungle Book', style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold
        ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
            'Rudyard Kipling', style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.white.withOpacity(0.7)
        )
        ),
        const SizedBox(
          height: 15,
        ),
        // const BookRating(
        //   mainAxisAlignment: MainAxisAlignment.center,
        // ),
        const SizedBox(
          height: 30,
        ),
        const BooksAction(),
      ],
    );
  }
}
