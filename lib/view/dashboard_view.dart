import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app_flutter/cubit/dashboard_cubit.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Dashboard")),


      ),
      body: SafeArea(child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2 ,
          crossAxisSpacing: 8 ,
          mainAxisSpacing:8
      ) ,
        children: [
          Card(
            child: InkWell(
              onTap: () {
                context.read<DashboardCubit>().openInterestView(context) ;
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.interests, size: 48),
                  SizedBox(height: 12),
                  Text('Simple Interest'),
                ],
              ),
            ),
          ),

          Card(
            child: InkWell(
              onTap: () {

                context.read<DashboardCubit>().openPalindromeView(context) ;
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.stacked_bar_chart, size: 48),
                  SizedBox(height: 12),
                  Text('Palindrome cubit'),
                ],
              ),
            ),
          ),

        ],
      )),
    ) ;
  }
}