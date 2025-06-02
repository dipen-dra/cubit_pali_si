import 'package:get_it/get_it.dart';
import 'package:my_app_flutter/cubit/dashboard_cubit.dart';
import 'package:my_app_flutter/cubit/palindrome_cubit.dart';
import 'package:my_app_flutter/cubit/simple_cubit.dart';

final serviceLocator = GetIt.instance ;
Future<void> initDependenices() async{
  _initBloc() ;
}

void _initBloc(){
  serviceLocator.registerFactory<SimpleInterestCubit>(() => SimpleInterestCubit()) ;
  serviceLocator.registerFactory<PalindromeCubit>(() => PalindromeCubit()) ;
  serviceLocator.registerLazySingleton<DashboardCubit>(
        () => DashboardCubit(serviceLocator(), serviceLocator()),
  ) ;
}