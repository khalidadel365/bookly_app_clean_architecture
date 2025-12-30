// import 'package:flutter/material.dart';
//
// import 'custom_book_item.dart';
//
// class SimilarBookListView extends StatelessWidget {
//   const SimilarBookListView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.of(context).size.height*.15,
//       child: ListView.separated(
//         scrollDirection: Axis.horizontal,
//         physics: BouncingScrollPhysics(),
//         itemBuilder: (context,index)=> CustomBookImage(),
//         itemCount: 10,
//         separatorBuilder: (context,index)=>SizedBox(
//             width: 10),
//       ),
//     );
//   }
// }