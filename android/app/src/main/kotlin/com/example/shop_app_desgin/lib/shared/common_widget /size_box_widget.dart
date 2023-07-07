import 'package:flutter/cupertino.dart';

class SizeBoxWidget extends StatelessWidget {
  double ?width;
  double ?height;
  Widget ?widget;

  SizeBoxWidget({super.key, this.width,this.height,this.widget});
  @override
  Widget build(BuildContext context) {
    return SizedBox(width:width ,height: height,child:widget,);
  }
}
