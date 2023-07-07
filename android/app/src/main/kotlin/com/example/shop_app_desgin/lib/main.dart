import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app_desgin/layout/layout_screen.dart';
import 'dart:ui' as ui;
import 'package:shop_app_desgin/modules/details_screen.dart';

void main(){
  runApp(
    DevicePreview(

      builder: (context) =>  const MyApp(),
    ),
  );}
double? screenWidth;
double?screenHeight;
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final windowSize = ui.window.physicalSize;
    final screenScale = ui.window.devicePixelRatio;
    screenWidth = windowSize.width / screenScale;
    screenHeight = windowSize.height / screenScale;
    return ScreenUtilInit(
      designSize: Size(screenWidth!, screenHeight!),
      builder: (context,item){
        return   MaterialApp(
            builder: DevicePreview.appBuilder,

            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                backgroundColor: Color(0xFF333742),
              ),
              bottomSheetTheme:  BottomSheetThemeData(
                backgroundColor:Colors.white.withOpacity(0),
              ),

              scaffoldBackgroundColor:  const Color(0xFF333742),
            ),
            debugShowCheckedModeBanner: false,
            home: const LayoutScreen()
        );
      },
    );
  }
}
