// lib/cubit/si_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';

class SiState {
  final double result;
  const SiState(this.result);
}

class SiCubit extends Cubit<SiState> {
  SiCubit() : super(const SiState(0));

  void calculate(int principal, int time, int rate) {
    double si = principal * time * rate / 100;
    emit(SiState(si));
  }
}
