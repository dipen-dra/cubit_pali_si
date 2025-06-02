import 'package:flutter_bloc/flutter_bloc.dart';

class PalindromeCubit extends Cubit<String> {
  PalindromeCubit() : super("Result");

  void checkPalindrome(String inputText) {
    String cleanedText = inputText
        .replaceAll(RegExp(r'[^a-zA-Z0-9]'), '')
        .toLowerCase();
    String reversedText = cleanedText.split('').reversed.join();

    if (cleanedText == reversedText) {
      emit(" The input is a palindrome");
    } else {
      emit(" The input is not a palindrome");
    }
  }
}