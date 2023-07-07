import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String ?title;
  Color ?color;
  double?fontSize;
  FontWeight?fontWeight;
  TextAlign? textAlign;
  TextWidget({Key? key, this.title,this.color,this.fontSize,this.fontWeight,this.textAlign}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
