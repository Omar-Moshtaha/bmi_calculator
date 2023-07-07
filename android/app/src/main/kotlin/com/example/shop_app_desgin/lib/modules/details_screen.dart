import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app_desgin/shared/common_widget%20/image_assets_widget.dart';
import 'package:shop_app_desgin/shared/common_widget%20/text_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../shared/common_widget /size_box_widget.dart';


class DetailsScreen extends StatefulWidget {
   const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
List <Color>color=[
  const Color(0Xff0FF333742),
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
      appBar: AppBar(
        elevation: 0,
        title:
          Row(
            children:  [
              Icon(Icons.arrow_back_ios,size: 1.sh/37,),
              SizeBoxWidget(width: 10.w,),

              TextWidget(title: "PULSE 3D Wireless Headset",
                fontSize: 18.sp
              ),
              const Spacer(),
              Icon(Icons.favorite_border_sharp,color: Colors.grey,size: 1.sh/35,)
            ],
          ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 1.sw/20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              SizeBoxWidget(height: 1.sw/15,),
              TextWidget(title: "PULSE 3D \nWireless Headset",
                  fontSize: 18.sp
                  ,color: Colors.white,
                fontWeight: FontWeight.w900,
              ),

              SizeBoxWidget(height: 1.sw/40,),

               Opacity(opacity: 0.55,child:              TextWidget(title: "Category Name",
                 fontSize: 17.sp
                 ,color: Colors.white,
                 fontWeight: FontWeight.w400,
               ),
               ),
              SizeBoxWidget(height: 1.sw/15,),
Row(

crossAxisAlignment: CrossAxisAlignment.start,  children:  [
 Opacity(opacity: 0.55,child: Icon(Icons.remove_red_eye,color: Colors.white,size:1.sh/35,)),
  SizeBoxWidget(width: 1.sw/40,),
     Opacity(opacity: 0.55,child:TextWidget(title: "1.5 k",color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w400)),
  SizeBoxWidget(width: 1.sw/40,),

     Opacity(opacity: 0.55,child: Icon(Icons.favorite,color: Colors.white,size:1.sh/35,)),

  SizeBoxWidget(width: 1.sw/40,),
     Opacity(opacity: 0.55,child:TextWidget(title: "212",color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w400)),
  SizeBoxWidget(width: 1.sw/40,),
     Opacity(opacity: 0.55,child: Icon(Icons.lock,color: Colors.white,size: 1.sh/35,)),

  SizeBoxWidget(width: 1.sw/40,),
     Opacity(opacity: 0.55,child: TextWidget(title: "120",color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w400)),
   const Spacer(),
  SizeBoxWidget(
  width: 1.sw/10,
  widget:   ListView.separated(scrollDirection: Axis.vertical,shrinkWrap: true,itemBuilder: (context,index)=>Container(
    height:1.sw/10,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.r),
      border: Border.all(color: Colors.white,width: 2.w),

      color:color[index]
    ),
  ), separatorBuilder: (context,index)=> SizeBoxWidget(height: 1.sw/20,), itemCount: 3),
),
  ],
),
              SizeBoxWidget(height: 1.sw/10,),
CarouselSlider.builder(itemCount: image.length, itemBuilder: (context,index,realIndex){
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: 10.w),
    child: ImageAssetsWidget(url: image[index],fit: BoxFit.contain,),
  );
}, options: CarouselOptions(onPageChanged: (index,e){
  setState(() {
    chanvalueOfIndex(index);

  });
},height: 1.sw/3,autoPlay: true,reverse: true,autoPlayInterval: const Duration(seconds: 2))),
              SizeBoxWidget(height: 30.h,),
              Center(
  child:   AnimatedSmoothIndicator(effect: ExpandingDotsEffect(
    activeDotColor: Colors.white,dotHeight: 1.sw/50,dotWidth:1.sw/25,
    dotColor: Colors.grey.withOpacity(0.55)
  ),activeIndex: index, count: image.length),
),
            ],
          ),
        ),
      ),
    );
  }
}
