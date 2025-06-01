// lib/cubit/dashboard_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';

enum DashboardView {
  palindrome,
  simpleinterest,
}

class DashboardState {
  final DashboardView selectedView;
  const DashboardState(this.selectedView);
}

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(const DashboardState(DashboardView.palindrome));

  void selectView(DashboardView view) {
    emit(DashboardState(view));
  }
}
