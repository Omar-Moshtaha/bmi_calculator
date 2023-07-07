import 'package:flutter/cupertino.dart';

class ImageAssetsWidget extends StatelessWidget {
  String ?url;
  double?height;
  double?width;
  BoxFit?fit;
  ImageAssetsWidget({this.url,this.height,this.width,this.fit});
  @override
  Widget build(BuildContext context) {
    return  Image.asset(url!,height: height,width:width ,fit: fit,);
  }
}
