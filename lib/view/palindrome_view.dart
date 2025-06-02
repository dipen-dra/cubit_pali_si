import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app_flutter/cubit/palindrome_cubit.dart';

class PalindromeView extends StatelessWidget {
  const PalindromeView({super.key});

  @override
  Widget build(BuildContext context) {
    final inputTextController = TextEditingController() ;
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Palindrome")),),
      
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: inputTextController,
              decoration: InputDecoration(
                labelText: "Enter a String" ,
                border: OutlineInputBorder(
                  borderRadius:  BorderRadius.circular(8)
                )
              ),
            ) ,
            SizedBox(height: 18,) ,
            ElevatedButton(onPressed: (){
              context.read<PalindromeCubit>().checkPalindrome(inputTextController.text) ;

            }, child: Text("Submit")) ,
            SizedBox(height: 20,),
            
            BlocBuilder<PalindromeCubit , String>(builder: (context , state) {
              return Text(
                '$state' ,
                style:  const TextStyle(
                  fontSize: 24 ,

                ),
              ) ;
            })
          ],
        ),
      )),

    ) ;
  }
}