import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app_flutter/cubit/simple_cubit.dart';

class SimpleInterestView extends StatelessWidget {
  const SimpleInterestView({super.key});

  @override
  Widget build(BuildContext context) {
    final principalController = TextEditingController() ;
    final interestController = TextEditingController() ;
    final timeController = TextEditingController() ;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Simple Interest")),
      ),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: principalController,
              decoration: InputDecoration(
                  labelText: "Enter principle amount" ,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)
                  )
              ),

            ) ,
            SizedBox(height: 18,) ,
            TextFormField(
              controller: interestController,
              decoration: InputDecoration(
                  labelText: "Enter Interest amount" ,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)
                  )
              ),

            ) ,

            SizedBox(height: 18,) ,
            TextFormField(
              controller: timeController,
              decoration: InputDecoration(
                  labelText: "Enter Time" ,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)
                  )
              ),
            ) ,
            SizedBox(height: 30,) ,
            ElevatedButton(onPressed: (){
           context.read<SimpleInterestCubit>().calculateInterest(int.parse(principalController.text), int.parse(interestController.text), int.parse(timeController.text)) ;
              
            }, child: const Text("Calculate")) ,
            SizedBox(height: 30,),
            BlocBuilder<SimpleInterestCubit , int>(builder: (context , state){
              return Text(
                '$state'  ,
                style: const TextStyle(
                    fontSize: 48 ,
                    fontWeight: FontWeight.bold
                ),

              ) ;
            }) ,


          ],
        ),
      )),

    ) ;
  }
}