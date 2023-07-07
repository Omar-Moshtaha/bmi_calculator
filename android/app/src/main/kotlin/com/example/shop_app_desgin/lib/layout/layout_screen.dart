import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


import '../modules/categories_screen.dart';
import '../modules/profile_screen.dart';
import '../modules/shoping_card_screen.dart';
import '../shared/common_widget /text_widget.dart';

class LayoutScreen extends StatefulWidget {

   const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  List<Widget>screen=[
    const CategoriesScreen(),
    const ShopingCardScreen(),
    const ProfileScreen(),

  ];

  List<String>title=[
    "Categories",
    "ShopingCard",
    "Profile"
  ];

 int index=0;

void changeIndex(int value){
  setState(() {
    index=value;

  });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  Icon(Icons.menu,size: 1.sh/30,),
        actions:  [

          Padding(
            padding: EdgeInsets.only(right: 1.sw/30),
            child: Icon(Icons.notification_add_rounded,size: 1.sh/30,),
          )
        ],
        centerTitle: false,
elevation: 0,
title:               TextWidget(title:title[index] ,fontSize: 18.sp,fontWeight: FontWeight.w700,),
      ),
      body: screen[index],
      bottomNavigationBar: Container(
        height: 1.sh/7.9,
        clipBehavior: Clip.antiAliasWithSaveLayer,

        decoration:  BoxDecoration(

          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r)

          ),
        ),
        child: GNav(selectedIndex:index ,onTabChange: (value){
changeIndex(value);
        },padding:  EdgeInsets.all(16.h),backgroundColor: const Color(0xff454D5A),color: Colors.white,activeColor: Colors.white,tabBackgroundColor: const Color(0xFF333742),gap: 8,tabs:  [
          GButton(icon: Icons.home,text: "Home",textStyle: TextStyle(fontSize: 20.sp,color: Colors.white),iconSize: 1.sh/27.99),
          GButton(icon: Icons.shopify,text: "ShopingCard",textStyle: TextStyle(fontSize: 20.sp,color: Colors.white),   iconSize:1.sh/27.99),
          GButton(icon: Icons.person,text: "Profile",   textStyle:TextStyle(fontSize: 20.sp,color: Colors.white),iconSize: 1.sh/27.99),

        ]
        ),
      ),
    );
  }
}
