import 'package:flutter_bloc/flutter_bloc.dart';

class PalindromeState {
  final String result;
  const PalindromeState(this.result);
}

class PalindromeCubit extends Cubit<PalindromeState> {
  PalindromeCubit() : super(const PalindromeState(''));

  void checkPalindrome(String text) {
    final cleaned = text.replaceAll(RegExp(r'\s+'), '').toLowerCase();
    final isPalindrome = cleaned == cleaned.split('').reversed.join('');
    emit(
      PalindromeState(isPalindrome ? "It is a Palindrome" : "Not a Palindrome"),
    );
  }
}
