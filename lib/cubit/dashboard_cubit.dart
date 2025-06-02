import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app_flutter/cubit/palindrome_cubit.dart';
import 'package:my_app_flutter/cubit/simple_cubit.dart';
import 'package:my_app_flutter/view/palindrome_view.dart';
import 'package:my_app_flutter/view/simpleinterest_view.dart';

class DashboardCubit extends Cubit<void>{
  DashboardCubit(
      this._palindromeCubit ,
      this._interestCubit ,

      ) : super(null) ;
      
  final PalindromeCubit _palindromeCubit ;
  final SimpleInterestCubit _interestCubit ;


  void openInterestView(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (_) => BlocProvider.value(value: _interestCubit ,child:  SimpleInterestView(),))
) ;
  }

  void openPalindromeView(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (_) => BlocProvider.value(value: _palindromeCubit , child: PalindromeView(),))
    ) ;
  }

}