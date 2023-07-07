import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class  FirstPage extends StatelessWidget {
  const  FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.network(
            'https://assets1.lottiefiles.com/private_files/lf30_p5tali1o.json',),
      ],
    ),
  ),
);
  }
}
