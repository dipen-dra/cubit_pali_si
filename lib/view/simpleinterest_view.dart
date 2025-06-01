// lib/view/si_view.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app_flutter/cubit/simple_cubit.dart';

class SiView extends StatelessWidget {
  const SiView({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _pController = TextEditingController(text: "100");
    final _tController = TextEditingController(text: "10");
    final _rController = TextEditingController(text: "11");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Interest Calculation"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _buildInput(_pController, "Enter the principal amount"),
              const SizedBox(height: 8),
              _buildInput(_tController, "Enter the time"),
              const SizedBox(height: 8),
              _buildInput(_rController, "Enter the interest rate"),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      int p = int.parse(_pController.text);
                      int t = int.parse(_tController.text);
                      int r = int.parse(_rController.text);
                      context.read<SiCubit>().calculate(p, t, r);
                    }
                  },
                  child: const Text("Calculate Simple Interest"),
                ),
              ),
              const SizedBox(height: 8),
              BlocBuilder<SiCubit, SiState>(
                builder: (context, state) => Text(
                  "Simple Interest: ${state.result}",
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInput(TextEditingController controller, String label) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      validator: (value) =>
          value == null || value.isEmpty ? "Required field" : null,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
