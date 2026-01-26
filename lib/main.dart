import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utilities/app_router.dart';
import 'package:bookly_app/core/utilities/sevice_locator.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

import 'bloc_observer.dart';
import 'features/home/data/repos/home_repo_imp.dart';
import 'features/home/domain/entities/book_entity.dart';

void main() async {
  setupServiceLocator();
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  runApp(const BooklyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Change this to your desired color
    ),
  );
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => FeaturedBooksCubit(
                FetchFeaturedBooksUseCase(getIt.get<HomeRepoImp>()),
              )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create:
              (context) => NewestBooksCubit(
                FetchNewestBooksUseCase(getIt.get<HomeRepoImp>()),
              )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme.apply(bodyColor: Colors.white),
          ),
        ),
      ),
    );
  }
}
