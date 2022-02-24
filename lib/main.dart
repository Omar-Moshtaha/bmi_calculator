import 'package:bmi_calculator/cubit/cubit.dart';
import 'package:bmi_calculator/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bmi_calculator.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context, state) {
        },
        builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home:Bmi_Calculator() ,
        );
        },
      ),
    );
  }
}