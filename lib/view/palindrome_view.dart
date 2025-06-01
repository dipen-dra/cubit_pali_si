import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/palindrome_cubit.dart';

class PalindromeView extends StatelessWidget {
  const PalindromeView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Palindrome Checker")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(labelText: "Enter text"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.read<PalindromeCubit>().checkPalindrome(controller.text);
              },
              child: const Text("Check"),
            ),
            const SizedBox(height: 16),
            BlocBuilder<PalindromeCubit, PalindromeState>(
              builder: (context, state) {
                return Text(state.result, style: const TextStyle(fontSize: 18));
              },
            ),
          ],
        ),
      ),
    );
  }
}
