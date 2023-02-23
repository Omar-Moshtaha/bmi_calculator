import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bmi_calculator/shared/cubit/cubit.dart';
import 'package:bmi_calculator/shared/cubit/states.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'modules/bmi_calculator.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => MyApp(), // Wrap your app
  ),
);


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(

      providers: [
        BlocProvider(create: (context)=>AppCubit()),
      ],
      child: MaterialApp(
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(splashIconSize: double.infinity,splash:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/image/bmi.png"),height: 100,),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text("Bmi Calculator",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
            )
          ],
        )
          , nextScreen: Bmi_Calculator(),
          splashTransition: SplashTransition.sizeTransition,

        ),
      ),
    );
  }
}