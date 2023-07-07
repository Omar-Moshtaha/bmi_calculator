import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app_desgin/shared/common_widget%20/image_assets_widget.dart';
import 'package:shop_app_desgin/shared/common_widget%20/size_box_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../shared/common_widget /text_widget.dart';

class DetailsOfProductScreen extends StatefulWidget {
  const DetailsOfProductScreen({Key? key}) : super(key: key);

  @override
  State<DetailsOfProductScreen> createState() => _DetailsOfProductScreenState();
}

class _DetailsOfProductScreenState extends State<DetailsOfProductScreen> {
  List <Color>color=[
    const Color(0xff0ff333742),
    const Color(0xFFFFFFFF),
    const Color(0xFFED5454),

  ];

  int index=0;

  chanvalueOfIndex(int value){
    setState(() {
      index=value;

    });

  }
  PageController pageController=PageController();

  List<String>image=[
    "assets/images/image1.png",
    "assets/images/image1.png",
    "assets/images/image1.png",
  ];
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body:SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
Container(height: 0.15.sh,width: double.infinity,color:   const Color(0xFF333742),child: Padding(
  padding:   EdgeInsets.only(top: 10.h,left: 20.w),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [

      Padding(
        padding:  const EdgeInsets.only(right: 20),
        child: Row(
          children:  [
          Icon(Icons.arrow_back_ios,color: Colors.white,size:1.sh/37,),
           SizeBoxWidget(width: 10,),
          TextWidget(title: "PS5",color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w400,),
          const Spacer(),
          Icon(Icons.share,color: Colors.white,size:1.sh/37,)

          ],
        ),
      ),
      SizeBoxWidget(height: 1.sw/30,),
      TextWidget(title: "PULSE 3D \nWireless Headset",color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w900,),


    ],
  ),
),),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 1.sh,
                    decoration:  BoxDecoration(

                      color: const Color(0xFF454D5A),

                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r),topRight: Radius.circular(20.r)),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left: 30.w,right:  30.w,top: 50.h),
                      child: SingleChildScrollView(
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                          Row(
                            children: [
                               Opacity(opacity: 0.55,child: Icon(Icons.remove_red_eye,size: 1.sh/35,color: Colors.white,)),
                              const Spacer(),
                              Container(height: 1.sw/13,width: 1.sw/8,decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: const Color(0xFF343743)
                              ),child:  Center(child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children:  [
                                  TextWidget(title: "4.6",color: Colors.white,fontSize: 12.sp,),

                                  Icon(Icons.star_rounded,color: Colors.yellow,size: 1.sw/20,),
                                ],
                              )),),
                            ],
                          ),
                          SizeBoxWidget(height: 10.h,),
                          TextWidget(title: "1.5 k",color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w400,),

                          SizeBoxWidget(height: 10.h,),

                           Opacity(opacity: 0.55,child: Icon(Icons.favorite,size:1.sh/35,color: Colors.white,)),

                          SizeBoxWidget(height: 10.h,),
                          TextWidget(title: "212",color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w400,),
                          SizeBoxWidget(height: 10.h,),
                           Opacity(opacity: 0.55,child: Icon(Icons.lock,color: Colors.white,size: 1.sh/35,)),

                          SizeBoxWidget(height: 10.h,),
                          TextWidget(title: "120",color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w400,),

                          SizeBoxWidget(height: 1.sh/8,),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              TextWidget(title: "\$180.95",color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w500,),

                              Container(width: 50,height: 2,color: Colors.white,),
                            ],
                          ),
                          SizeBoxWidget(height: 3.h,),

                          Row(
                            children: [
                              TextWidget(title: "\$179.95",color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w900,),

                              const Spacer(),
                              Container(height: 1.sw/13,width: 1.sw/10,decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: const Color(0xFF343743)
                              ),child:  Center(child:
                              TextWidget(title: "24%",color: Color(0xFF6AED8A),fontSize: 12.sp,),

                                  ),),
                            ],
                          ),
                           SizeBoxWidget(height: 15,),

                          Row(children:  [
                            const Opacity(opacity: 0.55,child: Icon(Icons.bus_alert,color: Colors.white,)),
                             SizeBoxWidget(width:10,),

                            Opacity(opacity: 0.55,child:
                            TextWidget(title: "Prices ind. VAT.",color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w400),
                            ),
                             SizeBoxWidget(width:10,),

                            Opacity(opacity: 0.55,child:
                            TextWidget(title: "plus shipping costs",color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w400),
                            ),

                          ],),
                           Opacity(
                            opacity: 0.55,
                            child:
                            TextWidget(title: "Lorem ipsum dolor sit amet ,consectetuer adipiscing elit\nAenean commodo ligula eget dolor, Aenean massa.",color: Colors.white,fontSize: 12.sp),

                          ),
                          SizeBoxWidget(height: 10.h,),
                          TextWidget(title: "Choose Color",color: Colors.white,fontSize: 13.sp,fontWeight: FontWeight.w900,),

                          SizeBoxWidget(height: 10.h,),
                          SizeBoxWidget(
                            height: 1.sw/12,
                            widget:   ListView.separated(scrollDirection: Axis.horizontal,shrinkWrap: true,itemBuilder: (context,index)=>Container(
                              width: 1.sw/12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  border: Border.all(color: Colors.white),

                                  color:color[index]
                              ),
                            ), separatorBuilder: (context,index)=> SizeBoxWidget(width: 10,), itemCount: 3),
                          ),
                        ],),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 20.h),
                    child: Column(
                      children: [

                        CarouselSlider.builder(itemCount: image.length, itemBuilder: (context,index,realIndex){
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child:
                              ImageAssetsWidget(url:image[index]),
                          );
                        }, options: CarouselOptions(onPageChanged: (index,e){
                          setState(() {
                            chanvalueOfIndex(index);

                          });
                        },height: 1.sw/1.7,autoPlay: true,reverse: true,autoPlayInterval: const Duration(seconds: 2))),
                         SizeBoxWidget(height: 20,),

                        Center(
                          child:   AnimatedSmoothIndicator(effect: ExpandingDotsEffect(
                              activeDotColor: Colors.white,dotHeight: 1.sw/50,dotWidth:1.sw/25,
                              dotColor: Colors.grey.withOpacity(0.55)
                          ),activeIndex: index, count: image.length),
                        ),

                      ],
                    ),
                  ),

                ],
              ),

               SizeBoxWidget(height:  10,)


              ],
            ),
          ),
        ),
        bottomSheet:
        Container(
          height: 1.sh/9,
          width: double.infinity,
          decoration:  BoxDecoration(
            color: const Color(0Xff333742),

            borderRadius: BorderRadius.only(topRight: Radius.circular(20.r),topLeft: Radius.circular(20.r),),
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: [

                Container(height: 1.sh/16,width: 1.sh/16,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xFF454D5A)
                ),child:  Icon(Icons.favorite_outline_rounded,color: Colors.white,size: 1.sw/20,),),
                SizeBoxWidget(width: 10.w,),
                Expanded(
                  child: Container(height: 1.sh/16,decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: const Color(0xFF454D5A)
                  ),child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.card_giftcard,color: Colors.white,size: 1.sw/20,),
                      SizeBoxWidget(width: 10.w,),
                      TextWidget(title: "ADD TO CART",color: Colors.white,fontSize: 12.sp,),

                    ],
                  ),),
                ),

              ],
            ),
          ),
        ),
      );
    }
  }

