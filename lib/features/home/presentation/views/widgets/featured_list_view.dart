import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';import '../../../../../core/widgets/custom_loading_indicator.dart';


import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
  builder: (context, state) {
    if (state is FeaturedBooksSuccess) {
      return SizedBox(
        height: MediaQuery
            .of(context)
            .size
            .height * .28,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => CustomBookImage(book: state.books[index]),
          itemCount: state.books.length,
          separatorBuilder: (context, index) =>
              SizedBox(
                  width: 12),
        ),
      );
    }
    else if (state is FeaturedBooksFailure) {
      return Center(child: Text(state.errorMessage));
    }
    else{
      return CustomLoadingIndicator();
    }
  }
);
  }
}