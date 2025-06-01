// splash_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class SplashState {}

class SplashInitial extends SplashState {}

class SplashLoaded extends SplashState {}

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial()) {
    _loadSplash();
  }

  Future<void> _loadSplash() async {
    await Future.delayed(const Duration(seconds: 3));
    emit(SplashLoaded());
  }
}
