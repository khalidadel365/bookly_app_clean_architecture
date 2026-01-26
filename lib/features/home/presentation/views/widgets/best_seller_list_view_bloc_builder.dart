import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newest_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_list_view_item.dart';

class NewestListViewBlocBuilder extends StatelessWidget {
  const NewestListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBooksSuccess){
          return NewestListView(books: state.books);
        }
        else if(state is NewestBooksFailure){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }
        else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}


