 import 'package:bookly_app/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_imp.dart';
import 'package:get_it/get_it.dart';

import 'api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator(){
getIt.registerSingleton<ApiService>(ApiService());
getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(
  homeLocalDataSource: HomeLocalDataSourceImp(),
  homeRemoteDataSource: HomeRemoteDataSourceImp(
    getIt.get<ApiService>()
  ),
));
}