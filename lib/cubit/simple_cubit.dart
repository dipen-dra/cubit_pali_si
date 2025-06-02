import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterestCubit extends Cubit<int>{
  SimpleInterestCubit() : super(0) ;

  void calculateInterest(int principle , int amount , int time){
      emit(principle * amount * time) ;
  }
}