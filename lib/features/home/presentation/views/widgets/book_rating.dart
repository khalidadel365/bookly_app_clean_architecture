import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utilities/styles.dart';

class BookRating  extends StatelessWidget {
  const BookRating ({super.key,this.mainAxisAlignment = MainAxisAlignment.start, required this.rating,});
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F), size: 14,
        ),
        const SizedBox(width: 6.3),
        Text(
          '$rating',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: 5,),
        Opacity(
          opacity: 0.5,
          child: Text(
            '(6)',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        )

      ],
    );
  }
}