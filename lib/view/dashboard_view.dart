// lib/view/home_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app_flutter/cubit/simple_cubit.dart';
import 'package:my_app_flutter/view/simpleinterest_view.dart';
import '../cubit/dashboard_cubit.dart';
import '../view/palindrome_view.dart';
import '../cubit/palindrome_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DashboardCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
          backgroundColor: Colors.yellow,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            children: [
              // Palindrome
              _dashboardButton(
                icon: Icons.text_fields,
                label: "Palindrome",
                context: context,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BlocProvider(
                        create: (_) => PalindromeCubit(),
                        child: const PalindromeView(),
                      ),
                    ),
                  );
                },
              ),
              // Simple Interest
              _dashboardButton(
                icon: Icons.calculate,
                label: "Simple Interest",
                context: context,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BlocProvider(
                        create: (_) => SiCubit(),
                        child: const SiView(),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dashboardButton({
    required BuildContext context,
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        elevation: 4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 40),
          const SizedBox(height: 10),
          Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../view/palindrome_view.dart';
// import '../cubit/palindrome_cubit.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Dashboard'),
//         backgroundColor: Colors.yellow,
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: GridView.count(
//           crossAxisCount: 2,
//           crossAxisSpacing: 16.0,
//           mainAxisSpacing: 16.0,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder:
//                         (_) => BlocProvider(
//                           create: (_) => PalindromeCubit(),
//                           child: const PalindromeView(),
//                         ),
//                   ),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.white,
//                 foregroundColor: Colors.black,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 24,
//                   horizontal: 16,
//                 ),
//                 elevation: 4,
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: const [
//                   Icon(Icons.text_fields, size: 40),
//                   SizedBox(height: 10),
//                   Text(
//                     'Palindrome Cubit',
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//             // Add more buttons if needed
//           ],
//         ),
//       ),
//     );
//   }
// }

// // lib/view/home_screen.dart
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../view/palindrome_view.dart';
// import '../cubit/palindrome_cubit.dart';
// import '../cubit/dashboard_cubit.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => DashboardCubit(),
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Dashboard'),
//           backgroundColor: Colors.yellow,
//           centerTitle: true,
//         ),
//         body: BlocBuilder<DashboardCubit, DashboardState>(
//           builder: (context, state) {
//             return _buildDashboard(context, state.selectedView);
//           },
//         ),
//       ),
//     );
//   }

//   Widget _buildDashboard(BuildContext context, DashboardView view) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: GridView.count(
//         crossAxisCount: 2,
//         crossAxisSpacing: 16.0,
//         mainAxisSpacing: 16.0,
//         children: [
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (_) => BlocProvider(
//                     create: (_) => PalindromeCubit(),
//                     child: const PalindromeView(),
//                   ),
//                 ),
//               );
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.white,
//               foregroundColor: Colors.black,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               padding: const EdgeInsets.symmetric(
//                 vertical: 24,
//                 horizontal: 16,
//               ),
//               elevation: 4,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: const [
//                 Icon(Icons.text_fields, size: 40),
//                 SizedBox(height: 10),
//                 Text(
//                   'Palindrome Cubit',
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//           ),

//           // Add more buttons here using `context.read<DashboardCubit>().selectView(...)`
//         ],
//       ),
//     );
//   }
// }

