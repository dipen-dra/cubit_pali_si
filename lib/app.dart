import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app_flutter/serviceLocator/service_locator.dart';
import 'package:my_app_flutter/view/splash_view.dart';

import 'cubit/dashboard_cubit.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  BlocProvider.value(value: serviceLocator<DashboardCubit>() ,
        child: SplashScreen(),),
    ) ;
  }
}