import 'dart:math';
import 'package:bmi_calculator/cubit/cubit.dart';
import 'package:bmi_calculator/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bmi_result.dart';
class Bmi_Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context, state) {
        },
      builder: (context, state) {
        return  Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            title: Text("BMI CALCULATOR"),
          ),
          body: Column(
            children: [
              Expanded(
                  child:
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              AppCubit.get(context).change(true);
                            },
                            child: Container(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage("images/male.png"),
                                    width: 80,
                                    height: 80,
                                    color: Colors.black,),
                                  SizedBox(height: 15.0,),
                                  Text("MALE", style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ],),
                              decoration: BoxDecoration(
                                color:AppCubit.get(context).isMale ? Colors.blue : Colors
                                    .grey[400],
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              AppCubit.get(context).change(false);
                            },
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(image: AssetImage(
                                      "images/female (1).png"),
                                    width: 80,
                                    height: 80,
                                    color: Colors.black,),
                                  SizedBox(height: 15.0,),
                                  Text("FEMALE", style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ],),
                              decoration: BoxDecoration(
                                color: AppCubit.get(context).isMale ? Colors.grey[400] : Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  )
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[400],

                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("HEIGHT", style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment
                                .baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text("${AppCubit.get(context).number
                                  .round()}", style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w900
                              ),),
                              SizedBox(width: 2,),
                              Text("CM", style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold
                              ),),

                            ],),
                          Slider(
                            max: 220, min: 120, value:
                          AppCubit.get(context).number, onChanged: (value) {
                            AppCubit.get(context).value(value);
                          },),
                        ],
                      ),
                    ),
                  )
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Text("WEIGHT", style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),),
                                Text("${
                                    AppCubit.get(context).weight
                                        .round()}", style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w900

                                ),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(onPressed: () {
                                      AppCubit.get(context).Width_Mins();
                                    },
                                      child: Icon(Icons.remove),
                                      mini: true,),
                                    FloatingActionButton(
                                      heroTag: "qw",
                                      onPressed: () {
                                        AppCubit.get(context).Width_PLus();
                                      },
                                      child: Icon(Icons.add),
                                      mini: true,),
                                  ],),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("AGE", style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),),
                                Text("${AppCubit.get(context).age
                                    .round()}", style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w900
                                ),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(onPressed: () {
                                      AppCubit.get(context).AgeMins();
                                    },
                                      child: Icon(Icons.remove),
                                      mini: true,),
                                    FloatingActionButton(onPressed: () {
                                      AppCubit.get(context).AgePlus();
                                    },
                                      child: Icon(Icons.add),
                                      mini: true,),
                                  ],),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              ),
              Container(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      var Result = AppCubit.get(context).weight / pow(AppCubit.get(context).number / 100, 2);
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>
                            BMI_RESULT(
                                AppCubit.get(context).isMale, Result,
                                AppCubit.get(context).age),));
                    },
                    child: Text(
                      "CALCULATOR",
                      style: TextStyle(color: Colors.white,),
                    ),
                    height: 50,
                    color: Colors.lightBlue,
                  ))
            ],
          ),
        );
      },
    );
  }
}


