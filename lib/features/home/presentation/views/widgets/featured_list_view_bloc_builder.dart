import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../manager/featured_books_cubit/featured_books_cubit.dart';
import '../../manager/featured_books_cubit/featured_books_state.dart';
import 'featured_list_view.dart';

class FeaturedListViewBlocBuilder extends StatelessWidget {
  const FeaturedListViewBlocBuilder({super.key});

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
              child: FeaturedBooksListView(books: state.books,),
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