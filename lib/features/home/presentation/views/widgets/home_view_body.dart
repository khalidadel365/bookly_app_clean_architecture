import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utilities/styles.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../manager/featured_books_cubit/featured_books_cubit.dart';
import '../../manager/featured_books_cubit/featured_books_state.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';
import 'featured_list_view_bloc_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: const CustomAppBar(),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: FeaturedListViewBlocBuilder(),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text('Newest Books', style: Styles.textStyle18),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: NewestListViewBlocBuilder(),
          ),
        ),
      ],
    );
  }
}


